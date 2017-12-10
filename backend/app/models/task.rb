# == Schema Information
#
# Table name: tasks
#
#  id            :integer          not null, primary key
#  completed     :boolean          default(FALSE)
#  assignment_id :integer          not null
#  student_id    :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Task < ApplicationRecord
  
  belongs_to :assignment,
    primary_key: :id,
    foreign_key: :assignment_id,
    class_name: :Assignment
  
  belongs_to :student,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :User
end
