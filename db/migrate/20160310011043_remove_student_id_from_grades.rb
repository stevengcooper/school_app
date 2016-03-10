class RemoveStudentIdFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :student_id, :integer
  end
end
