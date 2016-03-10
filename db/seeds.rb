# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i|
  Teacher.create(name: Faker::Name.name, email: Faker::Internet.email, password: "monkey")
end

50.times do |i|
  Student.create(name: Faker::Name.name, teacher_id: rand(1..10), email: Faker::Internet.email, password: "monkey")
end

50.times do |i|
  Parent.create(name: Faker::Name.name, student_id: rand(1..10), email: Faker::Internet.email, password: "monkey")
end

50.times do |i|
  Grade.create(score: rand(55..100), date: Date.new, assignment_name: Faker::Hipster.word, teacher_id: rand(1..10), name: Faker::Name.name, student_id: rand(1..10))
end
