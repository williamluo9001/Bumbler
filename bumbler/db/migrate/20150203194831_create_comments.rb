class CreateComments < ActiveRecord::Migration

  def change
    create_table :comments do |t|
      t.text :body
      t.string :user_id
      t.text :post_id
      t.timestamps null: false
	end

end

end