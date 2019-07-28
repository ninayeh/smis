class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.date :due_date

      t.timestamps null: false
    end
  end
end
