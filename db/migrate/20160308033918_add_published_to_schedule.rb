class AddPublishedToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :published, :boolean
  end
end
