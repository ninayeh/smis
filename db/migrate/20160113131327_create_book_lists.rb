class CreateBookLists < ActiveRecord::Migration[5.0]
  def change
    create_table :book_lists do |t|

      t.timestamps null: false
    end
  end
end
