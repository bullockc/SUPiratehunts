class CreatePirateHunts < ActiveRecord::Migration
  def change
    create_table :pirate_hunts do |t|

      t.timestamps null: false
    end
  end
end
