class AddCheckToMission < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :check, :boolean
  end
end
