<<<<<<< HEAD
class CreateComments < ActiveRecord::Migration\
	belongs_to User
=======
class CreateComments < ActiveRecord::Migration
	belongs_to Users
>>>>>>> 27236936bfd87839ef54cb30253475fe8cfc88c9
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
