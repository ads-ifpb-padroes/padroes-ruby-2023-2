require_relative 'estrategias/rotastrategy'  
require_relative 'estrategias/rotacarro'     
require_relative 'estrategias/rotabicicleta' 
require_relative 'estrategias/rotamoto'
require_relative 'navegador'                  

# Resto do código
carro = RotaDeCarro.new
bicicleta = RotaDeBicicleta.new
moto = RotaDeMoto.new

navegador1 = Navegador.new(carro)
navegador2 = Navegador.new(bicicleta)
navegador3 = Navegador.new(moto)

navegador1.calcular_rota("Casa", "Trabalho")
navegador2.calcular_rota("Parque", "Escola")
navegador3.calcular_rota("Casa", "Faculdade")