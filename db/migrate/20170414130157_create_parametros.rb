class CreateParametros < ActiveRecord::Migration
  def change
    create_table :parametros do |t|
      t.string :nombre
      t.string :valor

      t.timestamps null: false
    end
  end
end
