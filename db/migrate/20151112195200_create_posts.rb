class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :userid
      t.string :cityid
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
