class Membership < ApplicationRecord
  
  belongs_to :group,
    primary_key: :id,
    foreign_key: :group_id,
    class_name: :Group
    
  belongs_to :student,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :User
  
end
