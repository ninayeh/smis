class AddAvatarToLab < ActiveRecord::Migration[5.0]
  def change
    add_column :laboratories, :avatar, :string
  end
end
