class AddCheckToMission < ActiveRecord::Migration
  def change
    add_column :missions, :check, :boolean
  end
end
