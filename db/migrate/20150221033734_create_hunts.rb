class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|

	t.string :huntID
	t.string :huntname
	t.string :owner
	t.string :tasks
	t.integer :status
	t.boolean :availability
	t.datetime :startdate
	t.datetime :enddate
	t.string :startlocation
	t.text :description


	t.timestamps null: false
    end
  end
end
