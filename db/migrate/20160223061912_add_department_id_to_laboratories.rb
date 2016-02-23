class AddDepartmentIdToLaboratories < ActiveRecord::Migration
  def change
    add_reference :laboratories, :department, index: true, foreign_key: true
  end
end
