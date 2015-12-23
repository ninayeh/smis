class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string  :title
      t.text    :content

      t.timestamps null: false
    end
  end
end
