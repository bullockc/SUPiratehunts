class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|

		t.string :title
		t.string :author #FIGURE ME OUT
		t.boolean :active #ACTIVE VS INACTIVE
		t.boolean :published 
		t.boolean :public #PRIVATE VS PUBLIC
		t.datetime :start_date #user assigns it as they create it
		t.datetime :end_date 
		t.string :start_location
		t.text :description
	
      t.timestamps null: false
    end
  end
end
