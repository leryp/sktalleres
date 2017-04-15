class AddSecuenciaToCatedraAreas < ActiveRecord::Migration
  def change
    remove_column :catedras, :secuencia
    add_column :catedra_areas, :secuencia, :integer
  end
end
