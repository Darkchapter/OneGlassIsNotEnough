class AddMoreColumnsSruveys < ActiveRecord::Migration
  def change
  	add_column :surveys, :Q1, :integer
  	add_column :surveys, :Q2, :integer
  	add_column :surveys, :Q3, :integer
  	add_column :surveys, :Q4, :integer
  	add_column :surveys, :Q5, :integer
  end
end
