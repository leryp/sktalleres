class AddSecuenciaToAreaEstudio < ActiveRecord::Migration
  def change
    add_column :area_estudios, :secuencia, :integer
  end
end
