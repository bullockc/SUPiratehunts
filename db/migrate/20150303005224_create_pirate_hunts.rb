class CreatePirateHunts < ActiveRecord::Migration
  def change
    create_table :pirate_hunts do |t|
      t.boolean :completed
      t.references :pirate
      t.references :hunt
      t.timestamps null: false
    end
  end
end
