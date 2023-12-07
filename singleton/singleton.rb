##AppConfig armazena configurações globais do aplicativo, como a chave da API e o modo de depuração.
##a instância única é acessada através do método de classe instance.


class AppConfig
#define dois atributos de instância (api_key e debug_mode
  attr_accessor :api_key, :debug_mode
#construtor privado que impede que novas instancias de classes sejam diretamentes criadas
  private_class_method :new
#usada para armazenar a única instância da classe.
  @@instance = nil

  def self.instance
    @@instance ||= new
  end
end

#obtém a instância única da classe 
app_config = AppConfig.instance 
#define o valor da propriedade api_key na instância única.
app_config.api_key = "my_api_key"
app_config.debug_mode = true

##acessando as configurações em diferentes partes do código
puts "API Key: #{app_config.api_key}"
puts "Debug Mode: #{app_config.debug_mode}"
