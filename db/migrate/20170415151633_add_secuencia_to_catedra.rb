class AddSecuenciaToCatedra < ActiveRecord::Migration
  def change
    add_column :catedras, :secuencia, :integer
  end
end
