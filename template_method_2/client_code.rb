require_relative 'abstract_class'
require_relative 'concrete_class1'
require_relative 'concrete_class2'

def codigo_cliente(classe_abstrata)
  # ...
  classe_abstrata.metodo_modelo
  # ...
end

puts 'O mesmo código cliente pode funcionar com diferentes subclasses:'
codigo_cliente(ClasseConcreta1.new)
puts "\n"

puts 'O mesmo código cliente pode funcionar com diferentes subclasses:'
codigo_cliente(ClasseConcreta2.new)
