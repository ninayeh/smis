class AddFinalContentToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :final_content, :text
    add_reference :notes, :user, index: true, foreign_key: true
  end
end
