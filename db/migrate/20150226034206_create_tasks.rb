class CreateTasks < ActiveRecord::Migration
  def change #in db
    create_table :tasks do |t|
 
  		t.boolean :photo
  		t.boolean :gps
  		t.boolean :question
  		t.integer :points
    	t.string :prompt
  		t.string :clue
		t.string :correct_answer
  		
      t.timestamps null: false
    end
  end
end
