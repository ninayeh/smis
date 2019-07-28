class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string  :title
      t.text    :description
      t.string    :url
      t.string    :file
      t.boolean :published
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
