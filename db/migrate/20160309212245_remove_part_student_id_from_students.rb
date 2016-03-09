class RemovePartStudentIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :part_student_id, :integer
  end
end
