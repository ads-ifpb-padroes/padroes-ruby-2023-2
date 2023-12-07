require_relative 'director'
require_relative 'concrete_builder'

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

puts 'Custom product: '
builder.produce_part_a
builder.produce_part_b
builder.product.list_parts
