class Offer < ActiveRecord::Base
	has_many :pandit_offers
	has_many :pandits, :through => :pandit_offers
end
