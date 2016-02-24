class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string  :title
      t.text    :content
      t.string    :book_list
      t.string    :slide
      t.boolean :published
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
