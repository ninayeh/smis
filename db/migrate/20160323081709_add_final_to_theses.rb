class AddFinalToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :final, :boolean
  end
end
