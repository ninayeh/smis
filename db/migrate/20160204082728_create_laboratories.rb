class CreateLaboratories < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratories do |t|
      t.string :name
      t.string :professor_name
      t.text :description

      t.timestamps null: false
    end
  end
end
