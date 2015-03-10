class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 9 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
