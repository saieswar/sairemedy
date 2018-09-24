class PanditOffer < ActiveRecord::Base
	belongs_to :pandit
	belongs_to :offer
	belongs_to :user

  validates :booking_date, presence: true
  
end
