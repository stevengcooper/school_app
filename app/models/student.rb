class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :grades
  validates :name, presence: true

  def teacher_name
    teacher && teacher.name
  end
end
