class Company < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rounds
  has_many :investments
  has_many :investors, through: :investments  
  has_one :profile
end
