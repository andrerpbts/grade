class Disciplina < ActiveRecord::Base
  has_many :curso_disciplina_periodos

  has_many :periodo, :through => :curso_disciplina_periodos
  has_many :curso, :through => :curso_disciplina_periodos

  attr_accessible :nome

end
