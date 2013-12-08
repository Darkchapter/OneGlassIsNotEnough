class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :photo_url
      t.integer :rating
      t.string :news

      t.timestamps
    end
  end
end
