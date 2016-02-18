class AddFinalContentToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :final_content, :text
    add_reference :notes, :user, index: true, foreign_key: true
  end
end
