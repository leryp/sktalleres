class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre, null: false
      t.string :descripcion
      t.string :contenido
      t.string :dirigido_a
      t.string :back_img
      t.references :catedra, index: true, null: false

      t.timestamps null: false
    end
  end
end
