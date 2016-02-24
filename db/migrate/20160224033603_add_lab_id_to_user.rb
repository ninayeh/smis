class AddLabIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :laboratory, index: true, foreign_key: true
  end
end
