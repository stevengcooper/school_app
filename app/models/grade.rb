class Grade < ActiveRecord::Base
  belongs_to :student

  def student_name
    student && student.name
  end
end
