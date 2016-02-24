class EditStartEndToMission < ActiveRecord::Migration
  def change
    rename_column :missions, :end, :end_date
    rename_column :missions, :start, :start_date
  end
end
