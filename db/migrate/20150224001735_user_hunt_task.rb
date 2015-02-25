class UserHuntTask < ActiveRecord::Migration
  def change
  	create_table :user_hunt_task do |t|

  		t.integer :hunt_id
  		t.integer :task_id
  		t.integer :status

  		t.timestamps null: false

  	end
  end
end
