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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
