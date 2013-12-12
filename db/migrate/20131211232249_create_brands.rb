class CreateBrands < ActiveRecord::Migration
  def change
  	drop_table :brands
    create_table :brands do |t|
      t.string :name
      t.string :category
      t.string :sweetness
      t.string :body
      t.string :acidity
      t.string :pairings
      t.string :red

      t.timestamps
    end
  end
end
