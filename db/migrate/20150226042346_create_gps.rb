class CreateGps < ActiveRecord::Migration
  def change
    create_table :gps do |t|
    	t.string :directions
    	t.string :correct_coordinates
    	t.string :submitted_coordinates
      	t.timestamps null: false
    end
  end
end