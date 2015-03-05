class CreatePirateTasks < ActiveRecord::Migration
  def change
    create_table :pirate_tasks do |t|
      t.boolean :answer_uploaded
      t.boolean :completed
      t.references :pirate
      t.references :task
      t.references :hunt

      t.timestamps null: false
    end
  end
end
