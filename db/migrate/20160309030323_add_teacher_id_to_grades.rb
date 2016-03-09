class AddTeacherIdToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :teacher_id, :integer
  end
end
