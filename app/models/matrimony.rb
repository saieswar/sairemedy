class Matrimony < ActiveRecord::Base
	belongs_to :cast
	belongs_to :nakshatra
	belongs_to :user
end
