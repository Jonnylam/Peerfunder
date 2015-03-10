class Round < ActiveRecord::Base
  belongs_to :company
  has_many :due_diligences
  has_many :investments
  has_many :investors, through: :investments
  belongs_to :lead_investor, class_name: 'User'
end
