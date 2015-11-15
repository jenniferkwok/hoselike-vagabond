class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :badge
      t.integer :city_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
