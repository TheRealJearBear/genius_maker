class ChangeDueDateColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column(:meetings, :due_date, :start_time)
  end
end
