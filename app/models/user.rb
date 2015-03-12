class User < ActiveRecord::Base
  attr_accessor :skip_password
  authenticates_with_sorcery!

  has_many :companies
  has_many :investments, foreign_key: :investor_id
  has_many :companies, through: :investments
  has_many :rounds, through: :investments

  validates :password, confirmation: true, length: { minimum: 6 }, unless: :skip_password
  validates :password_confirmation, presence: true,  unless: :skip_password

  validates :email, uniqueness: true
end
