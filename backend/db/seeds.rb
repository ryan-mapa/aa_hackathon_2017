# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

teacher_one = User.create(
  first_name: "Chris",
  last_name: "Kim",
  username: "chrisykim",
  password: "password",
  is_instructor: true,
  class_id: 1
)

class_one = Classroom.create(
  name: "july2017",
  instructor_id: teacher_one.id,
)

student_one = User.create!(
  first_name: "Julie",
  last_name: "Lin",
  username: "jlin",
  password: "password",
  class_id: class_one.id
)
student_two = User.create(
  first_name: "David",
  last_name: "Banks",
  username: "dbanks",
  password: "password",
  class_id: class_one.id
)
student_three = User.create(
  first_name: "Ryan",
  last_name: "Mapa",
  username: "rmapa",
  password: "password",
  class_id: class_one.id
)


User.where(is_instructor: false).each do |student|
  Enrollment.create(
    student_id: student.id,
    class_id: class_one.id
  )
end

assignment_one = Assignment.create(
  name: "Family Tree Project",
  description: "Build out your family tree like we did in class the today. Talk to your parents and have them help you fill it out.",
  class_id: class_one.id
)

assignment_two = Assignment.create(
  name: "30 Minutes Silent Reading",
  description: "Continue reading My Father's Dragon for 30 minutes.",
  class_id: class_one.id
)
