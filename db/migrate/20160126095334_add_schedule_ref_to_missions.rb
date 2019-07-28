class AddScheduleRefToMissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :missions, :schedule, index: true, foreign_key: true
  end
end
