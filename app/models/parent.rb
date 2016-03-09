class Parent < ActiveRecord::Base
  belongs_to :student
  validates :name, presence: true
  validates :email, uniqueness: true
  has_secure_password

  def student_name
    student && student.name
  end
end
