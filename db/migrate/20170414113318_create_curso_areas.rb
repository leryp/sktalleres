class CreateCursoAreas < ActiveRecord::Migration
  def change
    create_table :curso_areas do |t|
      t.boolean :status, default: true
      t.references :curso, index: true, foreign_key: true
      t.references :area_estudio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
