class Disciplina < ActiveRecord::Base
  has_many :curso_disciplina_periodos

  has_many :periodos, :through => :curso_disciplina_periodos
  has_many :cursos, :through => :curso_disciplina_periodos

  attr_accessible :nome

end
