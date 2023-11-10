# Handler abstrato que define a interface para manipular solicitações
class Approver
  attr_accessor :successor

  def approve_expense(expense)
    raise NotImplementedError, "Subclasses devem implementar este método"
  end
end

# Handlers concretos que implementam a lógica de aprovação de despesas
class Manager < Approver
  def approve_expense(expense)
    if expense <= 1000
      puts "Gerente aprova despesa de #{expense} reais"
    elsif successor
      successor.approve_expense(expense)
    else
      puts "Despesa de #{expense} reais não pode ser aprovada"
    end
  end
end

class Director < Approver
  def approve_expense(expense)
    if expense <= 5000
      puts "Diretor aprova despesa de #{expense} reais"
    elsif successor
      successor.approve_expense(expense)
    else
      puts "Despesa de #{expense} reais não pode ser aprovada"
    end
  end
end

class CEO < Approver
  def approve_expense(expense)
    if expense <= 10000
      puts "CEO aprova despesa de #{expense} reais"
    elsif successor
      successor.approve_expense(expense)
    else
      puts "Despesa de #{expense} reais não pode ser aprovada"
    end
  end
end

# Exemplo de uso
manager = Manager.new
director = Director.new
ceo = CEO.new

manager.successor = director
director.successor = ceo

manager.approve_expense(800)   # Gerente aprova despesa de 800 reais
manager.approve_expense(4500)  # Diretor aprova despesa de 4500 reais
manager.approve_expense(12000) # CEO aprova despesa de 12000 reais
