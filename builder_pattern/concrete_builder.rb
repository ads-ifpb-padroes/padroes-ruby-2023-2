require_relative 'builder'
require_relative 'product'

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
