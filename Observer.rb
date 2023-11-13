require 'observer'
require 'date'

# Classe Observador
class ObservadorApp
  def update(app);
    raise NotImplementedError, 'Subclasses devem implementar este método'
  end
end

# Classe que representa a área de notificação
class AreaNotificacao < ObservadorApp
  def initialize
    @mensagens_lidas = 0
  end

  # Método chamado quando o estado do objeto observado muda
  def update(app)
    if @mensagens_lidas < app.qtde_mensagens
      (@mensagens_lidas...app.qtde_mensagens).each do |i|
        puts "#{app.nome}: #{app.mensagens[i]}"
      end
      @mensagens_lidas = app.qtde_mensagens
    end
  end
end

# Classe que representa o contador de mensagens
class ContadorDeMensagens < ObservadorApp
  def update(app)
    puts "#{app.nome} tem #{app.qtde_mensagens} mensagem(s)"
  end
end

class App   
  include Observable
  attr_reader :nome, :mensagens

  def initialize(nome)
    @nome = nome
    @mensagens = []
  end

  # Método para receber uma nova mensagem e notificar os observadores
  def receber_nova_mensagem(mensagem)
    @mensagens << "#{mensagem} - #{Time.now}"
    changed  # Marca o objeto como modificado, para que notify_observers funcione
    notify_observers(self)  # Notifica os observadores sobre a mudança
  end

  def qtde_mensagens
    @mensagens.size
  end
end

class Loader
  def self.main
    app = App.new("Telegram")
    app.receber_nova_mensagem("Opa")
    app.add_observer(AreaNotificacao.new)
    app.add_observer(ContadorDeMensagens.new)
    app.receber_nova_mensagem("Eae")

    sleep(1)
    app.receber_nova_mensagem("Tudo bem?")
  end
end

Loader.main
