class AddImagBackgroundToCatedra < ActiveRecord::Migration
  def change
    add_column :catedras, :image_background_url, :string
  end
end
