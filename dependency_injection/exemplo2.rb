# importando o dry container da biblioteca dry-rb, que é uma coleção de gems para desenvolvimento em Ruby
require 'dry/container'

# Criando um contêiner para gerenciar as dependências
container = Dry::Container.new

# Registrando dependências no contêiner
container.register(:logger, -> { puts 'Registrando logs...' })
container.register(:api_client, -> { puts 'Configurando cliente da API...' })

# Classe que utiliza as dependências
class MinhaClasse
  def initialize(dependencies)
    @logger = dependencies[:logger]
    @api_client = dependencies[:api_client]
  end

  def fazer_algo
    @logger.call
    @api_client.call
    puts 'Fazendo algo com as dependências...'
  end
end

# Criando uma instância da classe MinhaClasse com as dependências injetadas do contêiner
dependencies = {
  logger: container.resolve(:logger),
  api_client: container.resolve(:api_client)
}
objeto = MinhaClasse.new(dependencies)

# Utilizando as dependências
objeto.fazer_algo
