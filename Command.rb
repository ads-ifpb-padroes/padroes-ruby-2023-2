# Receiver
class Luz
    def ligar
      puts "Luz ligada"
    end
  
    def desligar
      puts "Luz desligada"
    end
  end
  
  # Command
  class Comando
    def executar
      raise NotImplementedError, "#{self.class} não implementa o método 'executar'"
    end
  end
  
  # Concrete Commands - Implementam a interface do comando
  class ComandoLigar < Comando
    def initialize(luz)
      @luz = luz
    end
  
    def executar
      @luz.ligar
    end
  end
  
  class ComandoDesligar < Comando
    def initialize(luz)
      @luz = luz
    end
  
    def executar
      @luz.desligar
    end
  end
  
  # Invoker - Responsável por armazenar e executar comandos
  class ControleRemoto
    def initialize
      @comandos = {}
    end
  
    def configurar_comando(nome_comando, comando)
      @comandos[nome_comando] = comando
    end
  
    def pressionar_botao(nome_comando)
      if @comandos.key?(nome_comando)
        @comandos[nome_comando].executar
      else
        puts "Comando não reconhecido."
      end
    end
  end
  
  # Cliente
  luz = Luz.new
  controle_remoto = ControleRemoto.new
  
  # Configurando os comandos no controle remoto
  controle_remoto.configurar_comando("ligar", ComandoLigar.new(luz))
  controle_remoto.configurar_comando("desligar", ComandoDesligar.n ew(luz))
  
  # Utilizando o controle remoto
  controle_remoto.pressionar_botao("ligar")