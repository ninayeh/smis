class AddPublishedToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :published, :boolean
  end
end
