class Product < ActiveRecord::Base
	mount_uploader :image, AvatarUploader

	has_many :products_carts

	validates :name, :price, :image, :description, presence: true
end
