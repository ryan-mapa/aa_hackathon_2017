class Enrollment < ApplicationRecord
  
  belongs_to :classroom,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :Classroom
    
  belongs_to :student,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :User
end
