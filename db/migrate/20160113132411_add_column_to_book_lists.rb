class AddColumnToBookLists < ActiveRecord::Migration[5.0]
  def change
    add_column :book_lists, :title, :string
    add_column :book_lists, :file, :string
  end
end
