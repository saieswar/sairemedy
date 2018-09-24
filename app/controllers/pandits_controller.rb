class PanditsController < ApplicationController
# 	def index
# # @pandits = Pandit.all.includes(:user)
#
# 		# @pandits = User.where(role: User::Pandit).includes(:pandit)
#
# 	end
    require 'will_paginate/array'
	def show
		@pandit = Pandit.find(params[:id])
	end

    def book_pandit
       #raise params.inspect
    	@pandit = Pandit.find(params[:id])
    	booking_date = params["user"]["born_on"]
    	offer = @pandit.offers.new(booking_date: booking_date,description: params[:description], active_offer: true, status: "Pending")
        offer.pandit_offers.new(user_id: current_user.id, pandit_id: @pandit.id,booking_date: booking_date);

      if offer.save
        redirect_to pandits_path
        flash[:notice] = "Notification sent to the pandit"
      else
        flash[:notice] = "Notification not sent"
      end
    end

    def accept_or_reject_offer(status, offer_id)
    	@offer = Offer.find(params[:offer_id])

        if status == "accept"

    	@offer.update(active_offer: false, status: "accepted");

        else
         @offer.update(active_offer: false, status: "rejected");
        end


    end


    def show_offers
    end

    def index
		# raise params.inspect
		@pandits = Pandit.all.eager_load(:user).paginate(:page => params[:page], :per_page => 2)
    # raise @pandits.first.user.inspect
    # @pandits.each do |pandit|
    #   pandit[:user] = pandit.user
    # end
    # Post.paginate(:page => params[:page])
		#Item.all.includes(:categories)
		#@pandits = User.where(role: User::Pandit).includes(:pandit)

       #@users = User.all.paginate(:page=> params[:page], :per_page=>3)
	  # if params[:commit]=="search"
	# raise params.inspect

         #@msg="sdfa"
	  deals=params[:type]
	  city=params[:city]
	  state=params[:state]
	  page= params[:page]
	  per_page=2

	#@pandits = Sunspot.search(Pandit) do
	    #if deals.present?
	     # with(:deals, deals)
	    #end
	    #if city.present?
	     # with(:city, city)
	    #end
	     #if state.present?
	      #with(:state, state)
	    #end

	    #paginate :page => page, :per_page => per_page


	  #end.results


	   #paginate :page => page, :per_page => per_page
	  end




	end
#end
