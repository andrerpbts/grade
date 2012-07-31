class CursoDisciplinaPeriodo < ActiveRecord::Base
  belongs_to :curso
  belongs_to :disciplina
  belongs_to :periodo
  attr_accessible :curso_id, :disciplina_id, :periodo_id

  validates :periodo_id, :uniqueness => { :scope => [:curso_id, :disciplina_id] }
end
