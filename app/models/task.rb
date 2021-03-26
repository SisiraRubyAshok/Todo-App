class Task < ApplicationRecord
	belongs_to :user
	validates_presence_of :todo
	# default_scope -> { order('priority ASC') }
	
	 mount_uploaders :avatars, AvatarUploader
  	serialize :avatars, JSON
end
