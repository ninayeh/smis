class AddAttributeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_reference :users, :department, index: true, foreign_key: true
  end
end
