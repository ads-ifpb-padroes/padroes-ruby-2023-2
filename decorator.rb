# Interface do Componente de Texto
class ComponenteTexto
  def texto
    raise NotImplementedError, "Método abstrato deve ser implementado pelas subclasses."
  end
end

# Componente de Texto Concreto
class TextoSimples < ComponenteTexto
  def texto
    "Texto simples"
  end
end

# Decorator Concreto - Adiciona formatação negrito
class NegritoDecorator < ComponenteTexto
  def initialize(componente_texto)
    @componente_texto = componente_texto
  end

  def texto
    "<b>#{@componente_texto.texto}</b>"
  end
end

# Decorator Concreto - Adiciona formatação itálico
class ItalicoDecorator < ComponenteTexto
  def initialize(componente_texto)
    @componente_texto = componente_texto
  end

  def texto
    "<i>#{@componente_texto.texto}</i>"
  end
end

# Exemplo de uso
componente_base = TextoSimples.new
puts "Texto Base: #{componente_base.texto}"

# Adicionando decorações
componente_negrito = NegritoDecorator.new(componente_base)
componente_italico_negrito = ItalicoDecorator.new(componente_negrito)

puts "Texto Decorado: #{componente_italico_negrito.texto}"