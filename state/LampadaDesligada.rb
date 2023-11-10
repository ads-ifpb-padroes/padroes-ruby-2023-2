# Estado concreto: Lâmpada Desligada

require_relative 'LampadaState'
require_relative 'LampadaLigada'

class LampadaDesligada < LampadaState
    def ligar
      puts "Ligando a lâmpada."
      return LampadaLigada.new
    end

    def desligar
        puts "A lâmpada já está desligada."
        self
      end
  end