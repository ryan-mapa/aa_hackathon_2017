# == Schema Information
#
# Table name: classrooms
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  instructor_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Classroom < ApplicationRecord
  
  validates :name, presence: true
  
  belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User
    
  has_many :assignments,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :Assignment
    
  has_many :groups,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :Group
  
  has_many :students,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :User
  
end
