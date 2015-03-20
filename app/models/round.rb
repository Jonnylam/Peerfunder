class Round < ActiveRecord::Base
  belongs_to :company
  has_many :invitations, :dependent => :destroy
  has_many :due_diligences
  has_many :investments, :dependent => :destroy
  has_many :investors, through: :investments
  belongs_to :lead_investor, class_name: 'User'
  accepts_nested_attributes_for :due_diligences, :reject_if => :all_blank, :allow_destroy => true
  mount_uploader :term_sheet, AvatarUploader

  def progress
    (self.amount_raised.to_f / self.funding_goal.to_f).round(2) * 100
  end

end
