
class System1
  def op
    puts "System1: Operation"
  end
end

class System2
  def op
    puts "System2: Operation"
  end
end

class Facade
  def initialize(sys1, sys2)
    @sys1 = sys1
    @sys2 = sys2
  end

  def op
    puts "Facade initiates operation:"
    @sys1.op
    @sys2.op
  end
end

# Cliente
sys1 = System1.new
sys2 = System2.new
facade = Facade.new(sys1, sys2)

facade.op
