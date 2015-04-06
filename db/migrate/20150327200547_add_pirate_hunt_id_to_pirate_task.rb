class AddPirateHuntIdToPirateTask < ActiveRecord::Migration
  def change
    add_reference :pirate_tasks, :pirate_hunt, index: true
  end
end
