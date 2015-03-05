class CreateTasks < ActiveRecord::Migration #plural because it is a migration
  def change #in db
    create_table :tasks do |t|
 
  		t.integer :task_type # 1:GPS, 2:Photo 3:Q/A
  		t.integer :points
    	t.string :prompt
  		t.string :clue
		  t.string :correct_answer
      t.references :hunt #REFERENCES are for the ID field
  		
      t.timestamps null: false
    end
  end
end
