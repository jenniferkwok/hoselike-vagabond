class AddBranchesToTable < ActiveRecord::Migration
  def change
  	add_column :users, :sfpoints, :integer
  	add_column :users, :lonpoints, :integer
  	add_column :users, :gibpoints, :integer
  end
end
