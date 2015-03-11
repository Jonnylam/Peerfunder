class DueDiligence < ActiveRecord::Base
  belongs_to :round
  belongs_to :company
end
