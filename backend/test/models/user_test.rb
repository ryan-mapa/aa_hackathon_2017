# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string           not null
#  last_name       :string           not null
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  is_instructor   :boolean          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  class_id        :integer
#  group_id        :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
