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

class User < ApplicationRecord

  validates :first_name, :last_name, :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_nil: true

  after_initialize :ensure_session_token

  attr_reader :password

  ### associations ###
  has_many :memberships,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Membership

  has_many :instructed_classrooms,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :Classroom

  has_many :tasks,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Task

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment

  has_many :groups,
    through: :memberships,
    source: :group

  has_many :enrolled_classrooms,
    through: :enrollments,
    source: :classroom

  has_many :instructors,
    through: :enrolled_classrooms,
    source: :instructor

  has_many :assignments,
    through: :enrolled_classrooms,
    source: :assignments

  has_many :students,
    through: :instructed_classrooms,
    source: :students
  ### associations ###

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    (user && user.is_password?(password)) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

end
