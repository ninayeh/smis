class AddScheduleRefToMissions < ActiveRecord::Migration
  def change
    add_reference :missions, :schedule, index: true, foreign_key: true
  end
end
