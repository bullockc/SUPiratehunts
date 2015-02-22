class User < ActiveRecord::Migration
  def change
	create_table :user do |t|

		t.string :name
		t.array :hunts_created
		t.array :hunts_joined
		t.array :user_hunt_task

		t.timestamps null: false

    end			
  end
end
