class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunt do |t|

	t.string :huntname
	t.string :owner
	t.belongs_to :task
	t.integer :status
	t.boolean :availability
	t.datetime :start_date
	t.datetime :end_date
	t.string :start_location
	t.text :description


	t.timestamps null: false
    end
  end
end
