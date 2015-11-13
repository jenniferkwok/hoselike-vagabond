class RemoveUserIdCityIdColumns < ActiveRecord::Migration
  def change
  	remove_column :posts, :userid
  	remove_column :posts, :cityid
  end
end
