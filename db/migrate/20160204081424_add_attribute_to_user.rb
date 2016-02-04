class AddAttributeToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_reference :users, :department, index: true, foreign_key: true
  end
end
