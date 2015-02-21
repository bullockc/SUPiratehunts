class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|

	t.string :ID
	t.string :Hunt_Name
	t.string :Owner
	t.array :Tasks
	t.integer :Status
	t.availability :boolean
	t.datetime :Start_Date
	t.datetime :End_Date
	t.string :Start_Location
	t.text :Description
	t.timestamps null: false
    end
  end
end
