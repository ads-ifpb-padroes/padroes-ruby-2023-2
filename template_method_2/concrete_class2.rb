# concrete_class2.rb
require_relative 'abstract_class'

class ClasseConcreta2 < ClasseAbstrata
   
   def operacoes_exigidas1
     puts 'ClasseConcreta2 diz: Implementei a Operação 1'
   end
 
   def operacoes_exigidas2
     puts 'ClasseConcreta2 diz: Implementei a Operação 2'
   end
 
   def gancho1
     puts 'ClasseConcreta2 diz: Gancho 1 Substituído'
   end
 end
