class CreateAreaEstudios < ActiveRecord::Migration
  def change
    create_table :area_estudios do |t|
      t.string :nombre, null: false

      t.timestamps null: false
    end
  end
end
