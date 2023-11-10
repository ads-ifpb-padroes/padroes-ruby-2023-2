# Classe de contexto: Lâmpada

require_relative 'LampadaState'
require_relative 'LampadaDesligada'

class Lampada
    attr_accessor :estado
  
    def initialize
      @estado = LampadaDesligada.new
    end
  
    def ligar
      @estado = @estado.ligar
    end
  
    def desligar
      @estado = @estado.desligar
    end
  end