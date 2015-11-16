class AddBackgroundImageToCitiesModel < ActiveRecord::Migration
  def change
  	  	add_column :cities, :background_img, :string
  end
end
