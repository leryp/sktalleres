class CreateCatedras < ActiveRecord::Migration
  def change
    create_table :catedras do |t|
      t.string :nombre, null: false
      t.string :descripcion
      t.string :logo_url, null: false
      t.string :video_url

      t.timestamps null: false
    end
  end
end
