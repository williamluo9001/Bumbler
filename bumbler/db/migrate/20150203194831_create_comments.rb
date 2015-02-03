class CreateComments < ActiveRecord::Migration\
	belongs_to User
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
