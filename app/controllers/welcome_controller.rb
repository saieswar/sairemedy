class WelcomeController < ApplicationController
	layout "welcome_layout"
	def index
		
	end

	def create_appointments
		# raise params.inspect
		@appointment = Appointment.new(email: params[:email], name: params[:name], phone: params[:phone], reason: params[:reason],surname: params[:surname], date_of_birth: params[:date_of_birth], time_of_birth: params[:time_of_birth], place_of_birth: params[:place_of_birth],address: params[:address],pay_amount: params[:pay_amount])
		if @appointment.save!
			# UserMailer.appointment_mail_to_admin(@appointment).deliver_later
      flash[:notice] = "The request for appointment created succesfully "
			redirect_to welcome_index_path

		else

		end
	end
end
