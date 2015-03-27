class CreateHunts < ActiveRecord::Migration #plural because it is a migration
  def change
    create_table :hunts do |t|

		t.string :title
		t.boolean :active #ACTIVE VS INACTIVE
		t.boolean :published 
		t.boolean :public #PRIVATE VS PUBLIC
		t.time :start_time #user assigns it as they create it
		t.time :end_time
		t.date :start_date
		t.date :end_date
		t.string :start_location
		t.text :description
		t.references :user #REFERENCES are for the ID field
	
      t.timestamps null: false
    end
  end
end
