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

require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
