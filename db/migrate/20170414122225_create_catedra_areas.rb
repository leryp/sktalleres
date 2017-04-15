class CreateCatedraAreas < ActiveRecord::Migration
  def change
    create_table :catedra_areas do |t|
      t.references :catedra, index: true, foreign_key: true
      t.references :area_estudio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
