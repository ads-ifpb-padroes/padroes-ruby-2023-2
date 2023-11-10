class ClasseAbstrata
  # O método modelo define o esqueleto de um algoritmo.
  def metodo_modelo
    operacao_base1
    operacoes_exigidas1
    operacao_base2
    gancho1
    operacoes_exigidas2
    operacao_base3
    gancho2
  end

  # Essas operações já têm implementações.

  def operacao_base1
    puts 'ClasseAbstrata diz: Estou fazendo a maior parte do trabalho'
  end

  def operacao_base2
    puts 'ClasseAbstrata diz: Mas permito que as subclasses substituam algumas operações'
  end

  def operacao_base3
    puts 'ClasseAbstrata diz: Mas estou fazendo a maior parte do trabalho de qualquer maneira'
  end

  # Essas operações devem ser implementadas nas subclasses.
  def operacoes_exigidas1
    raise NotImplementedError, "#{self.class} não implementou o método '#{__method__}'"
  end

  # @abstract
  def operacoes_exigidas2
    raise NotImplementedError, "#{self.class} não implementou o método '#{__method__}'"
  end

  # As subclasses podem substitur os ganchos, mas não é obrigatório
  # já que os gancho têm uma implementação padrão (mas vazia).

  def gancho1; end

  def gancho2; end
end
