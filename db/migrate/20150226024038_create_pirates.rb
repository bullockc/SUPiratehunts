class CreatePirates < ActiveRecord::Migration
  def change
    create_table :pirates do |t|
		t.string :display_name
		t.integer :user_id #needs ID of the associated user
		t.timestamps null: false
        t.timestamps null: false
        t.references :user #user ID associated with pirate
    end
  end
end
