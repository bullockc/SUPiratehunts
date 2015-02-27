class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :prompt
      t.boolean :submitted
      t.timestamps null: false
    end
  end
end
