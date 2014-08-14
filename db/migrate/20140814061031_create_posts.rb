class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string 	:title
      t.text 		:body
      t.string 	:blurb
      t.boolean :pulished

      t.timestamps
    end
  end
end
