class Builder
   # @abstract
   def produce_part_a
     raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
   end
 
   # @abstract
   def produce_part_b
     raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
   end
 
   # @abstract
   def produce_part_c
     raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
   end
 end
 
 
 class ConcreteBuilder1 < Builder

   def initialize
     reset
   end
 
   def reset
     @product = Product1.new
   end
  
   def product
     product = @product
     reset
     product
   end
 
   def produce_part_a
     @product.add('PartA1')
   end
 
   def produce_part_b
     @product.add('PartB1')
   end
 
   def produce_part_c
     @product.add('PartC1')
   end
 end
 
 class Product1
   def initialize
     @parts = []
   end
 
   # @param [String] part
   def add(part)
     @parts << part
   end
 
   def list_parts
     print "Product parts: #{@parts.join(', ')}"
   end
 end
 
 # The Director is only responsible for executing the building steps in a
 # particular sequence. It is helpful when producing products according to a
 # specific order or configuration. Strictly speaking, the Director class is
 # optional, since the client can control builders directly.
 class Director
   # @return [Builder]
   attr_accessor :builder
 
   def initialize
     @builder = nil
   end
 
   # The Director works with any builder instance that the client code passes to
   # it. This way, the client code may alter the final type of the newly
   # assembled product.
   def builder=(builder)
     @builder = builder
   end
 
   # The Director can construct several product variations using the same
   # building steps.
 
   def build_minimal_viable_product
     @builder.produce_part_a
   end
 
   def build_full_featured_product
     @builder.produce_part_a
     @builder.produce_part_b
     @builder.produce_part_c
   end
 end
 
 # The client code creates a builder object, passes it to the director and then
 # initiates the construction process. The end result is retrieved from the
 # builder object.
 
 director = Director.new
 builder = ConcreteBuilder1.new
 director.builder = builder
 
 puts 'Standard basic product: '
 director.build_minimal_viable_product
 builder.product.list_parts
 
 puts "\n\n"
 
 puts 'Standard full featured product: '
 director.build_full_featured_product
 builder.product.list_parts
 
 puts "\n\n"
 
 # Remember, the Builder pattern can be used without a Director class.
 puts 'Custom product: '
 builder.produce_part_a
 builder.produce_part_b
 builder.product.list_parts