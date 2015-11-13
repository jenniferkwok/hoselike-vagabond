class ReAddingUserIdCityId < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :string
  	add_column :posts, :city_id, :string
  end
end
