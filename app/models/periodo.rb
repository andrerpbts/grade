class Periodo < ActiveRecord::Base
  has_many :curso_disciplina_periodos
  
  has_many :disciplinas, :through => :curso_disciplina_periodos
  has_many :cursos, :through => :curso_disciplina_periodos

  attr_accessible :descricao
end
