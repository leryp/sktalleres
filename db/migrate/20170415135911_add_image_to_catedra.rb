class AddImageToCatedra < ActiveRecord::Migration
  def change
    add_column :catedras, :image_url, :string
  end
end
