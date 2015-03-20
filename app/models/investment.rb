class Investment < ActiveRecord::Base
  belongs_to :investor, class_name: 'User'
  belongs_to :company
  belongs_to :round

  validates :amount, numericality: { greater_than: 100, less_than: 500000}
end
