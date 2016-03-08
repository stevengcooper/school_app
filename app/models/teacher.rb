class Teacher < ActiveRecord::Base
  has_many :students
  has_many :grades, through: :students
  has_many :parents, through: :students
  validates :email, uniqueness: true
  has_secure_password
end
