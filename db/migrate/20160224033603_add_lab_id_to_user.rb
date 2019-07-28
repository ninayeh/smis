class AddLabIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :laboratory, index: true, foreign_key: true
  end
end
