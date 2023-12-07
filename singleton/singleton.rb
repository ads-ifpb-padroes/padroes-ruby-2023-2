##AppConfig armazena configurações globais do aplicativo, como a chave da API e o modo de depuração.
##a instância única é acessada através do método de classe instance.
##isso permite que as configurações sejam compartilhadas em todo o código, e as alterações
##feitas em uma parte do programa são refletidas em outras.


class AppConfig
  attr_accessor :api_key, :debug_mode

  private_class_method :new

  @@instance = nil

  def self.instance
    @@instance ||= new
  end
end

##uso do Singleton para configurações
app_config = AppConfig.instance
app_config.api_key = "my_api_key"
app_config.debug_mode = true

##acessando as configurações em diferentes partes do código
puts "API Key: #{app_config.api_key}"
puts "Debug Mode: #{app_config.debug_mode}"
