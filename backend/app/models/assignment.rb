# == Schema Information
#
# Table name: assignments
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  point_value :integer          default(100)
#  due_date    :date
#  class_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Assignment < ApplicationRecord
  
  validates :name, :point_value presence: true
  
  belongs_to :classroom,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :Classroom
    
  has_many :tasks,
    primary_key: :id,
    foreign_key: :assignment_id,
    class_name: :Task
    
  has_many :students, 
    through: :tasks,
    source: :student
  
end
