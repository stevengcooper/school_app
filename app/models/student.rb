class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :grades
  validates :name, presence: true
  has_secure_password
  validates :teacher, presence: true

  def teacher_name
    teacher && teacher.name
  end
end
