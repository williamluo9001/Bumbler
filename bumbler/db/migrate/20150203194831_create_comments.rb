class CreateComments < ActiveRecord::Migration
	belongs_to Users
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps null: false
    end
end
