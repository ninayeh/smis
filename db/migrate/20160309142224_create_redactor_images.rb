class CreateRedactorImages < ActiveRecord::Migration[5.0]
  def change
    create_table :redactor_images do |t|
      t.string :image, null: false

      t.timestamps null: false
    end
  end
end
