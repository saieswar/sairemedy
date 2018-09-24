class Pandit < ActiveRecord::Base
  belongs_to :user
  has_many :pandit_offers
  has_many :offers, :through => :pandit_offers
    # searchable do
    #   #searching on particular fields
    #    string :deals
    #    string :city
    #    string :state
    #  end
   end


