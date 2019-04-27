class WelcomeController < ApplicationController
	layout "welcome_layout"
	def index
		
	end

	def create_appointments
		@appointment = Appointment.new(email: params[:email], name: params[:name], phone: params[:phone], reason: params[:reason])
		if @appointment.save!
			UserMailer.appointment_mail_to_admin(@appointment).deliver_later
      flash[:notice] = "The request for appointment created succesfully "
			redirect_to welcome_index_path

		else

		end
	end
end
