class RemovePartStudentIdFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :part_student_id, :integer
  end
end
