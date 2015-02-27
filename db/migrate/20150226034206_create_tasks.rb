class CreateTasks < ActiveRecord::Migration
  def change #in db
    create_table :tasks do |t|
    	t.integer :points
		t.string :clue
  		t.boolean :completed
      t.timestamps null: false
    end
  end
end
