class Pirate < ActiveRecord::Migration
  def change
	create_table :pirate do |t|

		t.string :name
		t.text :hunts_created
		t.belongs_to :hunts_joined

		t.timestamps null: false

    end			
  end
end
