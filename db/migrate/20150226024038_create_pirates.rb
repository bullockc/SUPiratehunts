class CreatePirates < ActiveRecord::Migration
  def change
    create_table :pirates do |t|
		t.string :display_name
		t.timestamps null: false
        t.timestamps null: false
    end
  end
end
