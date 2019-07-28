class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.string  :title
      t.text    :content

      t.timestamps null: false
    end
  end
end
