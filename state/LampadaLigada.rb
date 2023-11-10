# Estado concreto: Lâmpada Ligada

require_relative 'LampadaState'
require_relative 'LampadaDesligada'

class LampadaLigada < LampadaState
    def desligar
      puts "Desligando a lâmpada."
      return LampadaDesligada.new
    end

    def ligar
        puts "A lâmpada já está ligada."
        self
      end
  end