class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
  has_one :contactable
  has_one :matrimony
  has_one :pandit, dependent: :destroy
  has_many :pandit_offers
  has_many :astro_pdfs
  TYPE_ADMIN = "Admin"
  TYPE_PANDIT = "Pandit"
  TYPE_PAID_USER = "Paid User"
  TYPE_FREE_USER = "Free User"
  Roles = [TYPE_PANDIT, TYPE_PAID_USER, TYPE_FREE_USER]

  accepts_nested_attributes_for :pandit, allow_destroy: true
  # accepts_nested_attributes_for :pandits, reject_if: lambda { |args| args['category_id'].blank?  }, allow_destroy: true
  ratyrate_rater
  ratyrate_rateable "user"
end
