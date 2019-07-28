class AddUserIdToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_reference :schedules, :user, index: true, foreign_key: true
  end
end
