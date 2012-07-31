class Periodo < ActiveRecord::Base
  has_many :curso_disciplina_periodos
  
  has_many :disciplina, :through => :curso_disciplina_periodos
  has_many :curso, :through => :curso_disciplina_periodos

  attr_accessible :descricao
end
