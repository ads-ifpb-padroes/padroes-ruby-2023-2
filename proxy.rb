# Objeto real
class DocumentoReal
    attr_reader :conteudo
  
    def initialize(nome)
      @nome = nome
      # Simula o carregamento demorado do conteúdo do documento
      puts "Carregando conteúdo do documento #{@nome}..."
      @conteudo = "Conteúdo do documento #{@nome}."
    end
  end
  
  # Interface do Documento
  class Documento
    def exibir
      raise NotImplementedError, "Método abstrato deve ser implementado pelas subclasses."
    end
  end
  
  # Proxy de Carregamento Tardio
  class ProxyDocumento < Documento
    def initialize(nome)
      @nome = nome
    end
  
    def exibir
      carregar_documento_real unless @documento_real
      @documento_real.exibir
    end
  
    private
  
    def carregar_documento_real
      @documento_real = DocumentoReal.new(@nome)
    end
  end
  
  # Exemplo de uso
  proxy = ProxyDocumento.new("MeuDocumento.txt")
  
  # O conteúdo real do documento só é carregado quando necessário
  proxy.exibir
  