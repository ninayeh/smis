class AddFinalToTheses < ActiveRecord::Migration[5.0]
  def change
    add_column :theses, :final, :boolean
  end
end
