class AddColumnToBookLists < ActiveRecord::Migration
  def change
    add_column :book_lists, :title, :string
    add_column :book_lists, :file, :string
  end
end
