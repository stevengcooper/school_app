class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :grades
  validates :name, presence: true
  validates :email, uniqueness: true
  has_secure_password

  def teacher_name
    teacher && teacher.name
  end
end
