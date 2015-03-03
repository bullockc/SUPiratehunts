class CreateGps < ActiveRecord::Migration
  def change
    create_table :gps do |t|
    	t.string :directions
    	t.string :coordinates
      	t.timestamps null: false
    end
  end
end
