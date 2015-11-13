class ChangeUserIdCityIdToInt < ActiveRecord::Migration
  def change
  	remove_column :posts, :user_id, :string
  	add_column :posts, :user_id, :integer

  	remove_column :posts, :city_id, :string
  	add_column :posts, :city_id, :integer
  end
end
