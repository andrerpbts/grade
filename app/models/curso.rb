class Curso < ActiveRecord::Base
  has_many :curso_disciplina_periodos

  has_many :disciplinas, :through => :curso_disciplina_periodos
  has_many :periodos, :through => :curso_disciplina_periodos

  attr_accessible :nome
end
