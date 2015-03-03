class CreatePirateTasks < ActiveRecord::Migration
  def change
    create_table :pirate_tasks do |t|

      t.timestamps null: false
    end
  end
end
