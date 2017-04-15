class AddDestacadoToAreaEstudio < ActiveRecord::Migration
  def change
    add_column :area_estudios, :destacado, :boolean
  end
end
