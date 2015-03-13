class Round < ActiveRecord::Base
  belongs_to :company
  has_many :due_diligences
  has_many :investments
  has_many :investors, through: :investments
  belongs_to :lead_investor, class_name: 'User'
  accepts_nested_attributes_for :due_diligences, :reject_if => :all_blank, :allow_destroy => true
end
