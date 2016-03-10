class RemoveStudentThisFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :student, :string
  end
end
