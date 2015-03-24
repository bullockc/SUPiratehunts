class CreatePirateHunts < ActiveRecord::Migration #plural because it is a migration
  def change
    create_table :pirate_hunts do |t|
      t.boolean :completed
      t.references :user
      t.references :hunt #REFERENCES are for the ID field
      t.timestamps null: false
    end
  end
end
