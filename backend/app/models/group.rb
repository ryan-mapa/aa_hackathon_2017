# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  class_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ApplicationRecord
  
  belongs_to :classroom,
    primary_key: :id,
    foreign_key: :class_id,
    class_name: :Classroom
  
  has_many :students,
    primary_key: :id,
    foreign_key: :group_id,
    class_name: :User
    
  has_many :tasks,
    through: :students,
    source: :tasks
  
end
