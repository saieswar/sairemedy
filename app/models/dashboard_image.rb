class DashboardImage < ActiveRecord::Base
	mount_uploader :image, AvatarUploader
end
