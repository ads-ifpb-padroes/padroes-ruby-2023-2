class Product1
   def initialize
     @parts = []
   end
 
   def add(part)
     @parts << part
   end
 
   def list_parts
     print "Product parts: #{@parts.join(', ')}"
   end
 end
 