require_relative 'abstract_class'


#As classes concretas devem implementar todas as operações abstratas da classe base.
# Elas também podem substituir algumas operações com uma implementação padrão.
class ClasseConcreta1 < ClasseAbstrata
   def operacoes_exigidas1
     puts 'ClasseConcreta1 diz: Implementei a Operação 1'
   end
 
   def operacoes_exigidas2
     puts 'ClasseConcreta1 diz: Implementei a Operação 2'
   end
 end
