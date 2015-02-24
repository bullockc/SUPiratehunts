class Task < ActiveRecord::Migration
  def change
	create_table :user do |t|
		
		t.belongs_to :hunt
		t.integer :type
		t.integer :points
		t.string :owner
		t.string :user
		t.string :clue
		

	end
  end
end
