class AddAvatarToLab < ActiveRecord::Migration
  def change
    add_column :laboratories, :avatar, :string
  end
end
