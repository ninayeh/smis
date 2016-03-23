class CreateResourceComments < ActiveRecord::Migration
  def change
    create_table :resource_comments do |t|
      t.text :comment
      t.string :user_name
      t.references :resource, index:true, foreign_key:true

      t.timestamps null: false
    end
  end
end
