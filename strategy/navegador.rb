#context
class Navegador
attr_accessor :estrategia

def initialize(estrategia)
  @estrategia = estrategia
end

def calcular_rota(origem, destino)
  @estrategia.calcular_rota(origem, destino)
end
end