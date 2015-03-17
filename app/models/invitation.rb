class Invitation < ActiveRecord::Base
	belongs_to :inviter, class_name: "User"
	belongs_to :round 
	belongs_to :invitees, class_name: "User"
end
