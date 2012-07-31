class CreateCursoDisciplinaPeriodos < ActiveRecord::Migration
  def change
    create_table :curso_disciplina_periodos do |t|
      t.references :curso
      t.references :disciplina
      t.references :periodo

      t.timestamps
    end
    add_index :curso_disciplina_periodos, :curso_id
    add_index :curso_disciplina_periodos, :disciplina_id
    add_index :curso_disciplina_periodos, :periodo_id
  end
end
