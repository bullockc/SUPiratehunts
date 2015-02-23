class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|

	t.string :ID
	t.string :hunt_name
	t.string :owner
	t.index :tasks
	t.integer :status
	t.boolean :availability
	t.datetime :start_date
	t.datetime :end_date
	t.string :start_location
	t.text :description
	t.timestamps null: false
    end
  end
end
