# Classe abstrata que define o Visitor
class Visitor
  def visit_circle(circle)
    raise NotImplementedError, "Subclasses devem implementar este método"
  end

  def visit_rectangle(rectangle)
    raise NotImplementedError, "Subclasses devem implementar este método"
  end
end

# Classe concreta que representa um círculo
class Circle
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  # Método que aceita um Visitor para calcular a área e o perímetro
  def accept(visitor)
    visitor.visit_circle(self)
  end
end

# Classe concreta que representa um retângulo
class Rectangle
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  # Método que aceita um Visitor para calcular a área e o perímetro
  def accept(visitor)
    visitor.visit_rectangle(self)
  end
end

# Implementação concreta do Visitor para cálculo de área e perímetro
class GeometryCalculator < Visitor
  def visit_circle(circle)
    area = Math::PI * circle.radius**2
    perimeter = 2 * Math::PI * circle.radius
    puts "Área do círculo: #{area}, Perímetro do círculo: #{perimeter}"
  end

  def visit_rectangle(rectangle)
    area = rectangle.width * rectangle.height
    perimeter = 2 * (rectangle.width + rectangle.height)
    puts "Área do retângulo: #{area}, Perímetro do retângulo: #{perimeter}"
  end
end

# Exemplo de uso
circle = Circle.new(5)
rectangle = Rectangle.new(3, 4)
calculator = GeometryCalculator.new

circle.accept(calculator)
rectangle.accept(calculator)
