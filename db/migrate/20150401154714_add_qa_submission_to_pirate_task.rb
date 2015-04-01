class AddQaSubmissionToPirateTask < ActiveRecord::Migration
  def change
    add_column :pirate_tasks, :qa_submission, :string
  end
end
