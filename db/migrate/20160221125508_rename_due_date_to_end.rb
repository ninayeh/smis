class RenameDueDateToEnd < ActiveRecord::Migration[5.0]
  def change
    rename_column :missions, :due_date, :end
    add_column :missions, :start, :date
  end
end
