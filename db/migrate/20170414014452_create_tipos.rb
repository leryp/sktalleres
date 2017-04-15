class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :nombre, null: false

      t.timestamps null: false
    end
  end
end
