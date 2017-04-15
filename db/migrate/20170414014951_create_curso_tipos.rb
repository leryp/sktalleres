class CreateCursoTipos < ActiveRecord::Migration
  def change
    create_table :curso_tipos do |t|
      t.integer :horas_online
      t.integer :horas_presenciales
      t.references :tipo, index: true, null: false
      t.references :curso, index: true, null: false

      t.timestamps null: false
    end
  end
end
