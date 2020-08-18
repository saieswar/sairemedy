require 'csv'

class DashboardController < ApplicationController
	before_action :authenticate_user!
	# before_action :is_admin?
 	# layout 'admin'
  def index
    @current_user = current_user
  	@references_count  = User.where(reference_no: current_user.serial_no).count

    @refered_users = User.where(reference_no: current_user.serial_no)

    @sent_request =  PanditOffer.where(user_id: current_user.id)

    @offers = current_user.role == User::TYPE_PANDIT ? current_user.pandit.offers.map(&:pandit_offers).flatten : []
    @appointments = Appointment.all.order('created_at DESC')
    #@pandits = PanditOffer.includes(:offer).where(user_id: current_user.id)
   @pandits = current_user.pandit_offers.includes(:offer).map(&:offer).select{|x| x.status == "Accepted"}.map(&:pandit_offers).flatten!
   @carts = current_user.role == User::TYPE_ADMIN ? ProductsCart.all : @current_user.products_carts
  end


  def offer_action
    offer = Offer.find_by_id(params[:id])
    if offer.update(status: params[:request_action])
      redirect_to dashboard_index_path
      flash[:notice] = "The request from the user is "+params[:request_action]
    else

    end
  end

  def download_appointments_csv
    appointments = Appointment.all
    respond_to do |format|
      format.csv do
        csv_data = CSV.generate do |csv|
        csv << ["Email", "Name", "Surname", "Phone", "Date of Birth", "Time of Birth", "Place of Birth", "Address", "Reason" , "Pay Amount"]
          appointments.each do |appointment|
            csv << [appointment.email, appointment.name, appointment.surname, appointment.phone, appointment.date_of_birth, appointment.time_of_birth, appointment.place_of_birth, appointment.address, appointment.reason, appointment.pay_amount]
          end
        end
          send_data(csv_data, :type => 'text/csv; charset=utf-8; header=present', :filename => "appointments_#{Date.today.strftime("%d%b")}.csv") 
      end
    end 
  end
end
