class Parent < ActiveRecord::Base
  belongs_to :student
  validates :name, presence: true

  def student_name
    student && student.name
  end
end
