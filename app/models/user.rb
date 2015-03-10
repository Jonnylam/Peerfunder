class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :companies
  has_many :investments, foreign_key: :investor_id
  has_many :companies, through: :investments
  has_many :rounds, through: :investments

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
