# Classe abstrata para estados
class LampadaState

  def ligar
    raise NotImplementedError, "Método ligar não implementado."
  end

  def desligar
    raise NotImplementedError, "Método desligar não implementado."
  end
end