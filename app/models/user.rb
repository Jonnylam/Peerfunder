class User < ActiveRecord::Base
  attr_accessor :skip_password
  authenticates_with_sorcery!

  # has_many :followers, foreign_key: :follower_id
  # has_many :followable, foreign_key: :followable_id
  acts_as_messageable
  acts_as_follower
  acts_as_followable

  has_many :companies
  has_many :investments, foreign_key: :investor_id
  has_many :companies, through: :investments
  has_many :rounds, through: :investments
  has_many :inviters, foreign_key: :inviter_id
  has_many :invitees, foreign_key: :invitee_id

  validates :password, confirmation: true, length: { minimum: 6 }, unless: :skip_password
  validates :password_confirmation, presence: true,  unless: :skip_password

  validates :email, uniqueness: true

  def name
    self.first_name + " " + self.last_name
  end

  def accreditation?
    self.accreditation == true
  end

  def admin?
    self.user_type == "admin"
  end

  def mailboxer_email(object)
    email
  end
end
