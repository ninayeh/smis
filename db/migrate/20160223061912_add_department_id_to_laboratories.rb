class AddDepartmentIdToLaboratories < ActiveRecord::Migration[5.0]
  def change
    add_reference :laboratories, :department, index: true, foreign_key: true
  end
end
