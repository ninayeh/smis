class AddPublishedToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :published, :boolean
  end
end
