class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :question
		t.string :right_answer
		t.string :submitted_answer
      t.timestamps null: false
    end
  end
end
