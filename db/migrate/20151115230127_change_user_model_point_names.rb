class ChangeUserModelPointNames < ActiveRecord::Migration
  def change
  	remove_column :users, :sfpoints
  	remove_column :users, :lonpoints
  	remove_column :users, :gibpoints
  	add_column :users, :sf_first, :boolean
  	add_column :users, :sf_tenth, :boolean
  	add_column :users, :lon_first, :boolean
  	add_column :users, :lon_tenth, :boolean
  	add_column :users, :gib_first, :boolean
  	add_column :users, :gib_tenth, :boolean
  end
end

