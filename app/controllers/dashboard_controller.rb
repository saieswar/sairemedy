class DashboardController < ApplicationController
	before_action :authenticate_user!
	# before_action :is_admin?
 	# layout 'admin'
  def index

  	@references_count  = User.where(reference_no: current_user.serial_no).count

    @refered_users = User.where(reference_no: current_user)

    @sent_request =  PanditOffer.where(user_id: current_user.id)

    @offers = current_user.role == User::TYPE_PANDIT ? current_user.pandit.offers.map(&:pandit_offers).flatten : []
    #@pandits = PanditOffer.includes(:offer).where(user_id: current_user.id)
   @pandits = current_user.pandit_offers.includes(:offer).map(&:offer).select{|x| x.status == "Accepted"}.map(&:pandit_offers).flatten!
  end


  def offer_action
    offer = Offer.find_by_id(params[:id])
    if offer.update(status: params[:request_action])
      redirect_to dashboard_index_path
      flash[:notice] = "The request from the user is "+params[:request_action]
    else

    end
  end
end
