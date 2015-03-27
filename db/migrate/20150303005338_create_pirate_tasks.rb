class CreatePirateTasks < ActiveRecord::Migration #plural because it is a migration
  def change
    create_table :pirate_tasks do |t|

      t.boolean :answer_uploaded
      t.boolean :completed
      t.references :user #REFERENCES are for the ID field
      t.references :task
      t.references :hunt 
      
      t.timestamps null: false
    end
  end
end
