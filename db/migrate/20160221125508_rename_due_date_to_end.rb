class RenameDueDateToEnd < ActiveRecord::Migration
  def change
    rename_column :missions, :due_date, :end
    add_column :missions, :start, :date
  end
end
