class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :photo_url
      t.integer :rating

      t.timestamps
    end
  end
end
