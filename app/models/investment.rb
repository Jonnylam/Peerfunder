class Investment < ActiveRecord::Base
  belongs_to :investor, class_name: 'User'
  belongs_to :company
  belongs_to :round
end
