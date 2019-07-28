class AddPublishedToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :published, :boolean
  end
end
