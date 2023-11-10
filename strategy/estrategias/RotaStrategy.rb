# Classe abstrata para cálculo de rotas
class RotaStrategy
    def calcular_rota(origem, destino)
      raise NotImplementedError, "Método calcular_rota deve ser implementado pelas subclasses."
    end
  end