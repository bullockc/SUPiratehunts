class CreatePirates < ActiveRecord::Migration
  def change
    create_table :pirates do |t|
		t.string :email
		t.string :password
		t.string :display_name
		t.timestamps null: false
        t.timestamps null: false
    end
  end
end
