class AddStudentIdToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :part_student_id, :integer
  end
end
