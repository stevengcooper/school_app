# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t = Teacher.create(name: "Sally", email: "sally@gmail.com", password: "sally")

Student.create(name: "Billy Tables", teacher_id: 1)

Parent.create(name: "Molly Tables", student_id: 1)
