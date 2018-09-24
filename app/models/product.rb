class Product < ActiveRecord::Base
	mount_uploader :image, AvatarUploader

	validates :name, :price, :image, :description, presence: true
end
