# Classe abstrata que define o comportamento de um cargo
class Cargo
  def calcular_salario
    raise NotImplementedError, "Subclasses devem implementar este método"
  end
end

# Classe concreta que implementa um cargo padrão
class CargoPadrao < Cargo
  def calcular_salario
    3000 # Salário padrão
  end
end

# Classe Null que atua como um cargo vazio (sem cargo)
class CargoNulo < Cargo
  def calcular_salario
    0 # Não há salário
  end
end

# Classe Funcionario que utiliza o padrão Null Object
class Funcionario
  attr_accessor :cargo

  def initialize(cargo)
    @cargo = cargo || CargoNulo.new
  end

  def salario
    @cargo.calcular_salario
  end
end

# Exemplo de uso
funcionario_com_cargo = Funcionario.new(CargoPadrao.new)
puts "Salário do funcionário com cargo: #{funcionario_com_cargo.salario}" # Salário do funcionário com cargo: 3000

funcionario_sem_cargo = Funcionario.new(nil)
puts "Salário do funcionário sem cargo: #{funcionario_sem_cargo.salario}" # Salário do funcionário sem cargo: 0
