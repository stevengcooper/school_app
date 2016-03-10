class AddStudentToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :student, :string
  end
end
