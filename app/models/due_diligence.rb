class DueDiligence < ActiveRecord::Base
  belongs_to :round
  belongs_to :company
  mount_uploader :file, DiligenceUploader
end
