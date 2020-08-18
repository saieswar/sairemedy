class WelcomeController < ApplicationController
	layout "welcome_layout"
	def index
		
	end

	def create_appointments
		# raise params.inspect
		@appointment = Appointment.new(email: params[:email], name: params[:name], phone: params[:phone], reason: params[:reason],surname: params[:surname], date_of_birth: params[:date_of_birth], time_of_birth: params[:time_of_birth], place_of_birth: params[:place_of_birth],address: params[:address],pay_amount: params[:pay_amount],councelling_type: params[:councelling_type], gender: params[:gender], aadhar: params[:aadhar], job: params[:job], caste: params[:caste], religion: params[:religion], reference: params[:reference], marital_status: params[:marital_status], payment_type: params[:payment_type], date_of_appointment: params[:date_of_appointment], time_of_appointment: params[:time_of_appointment])
		if @appointment.save!
			# UserMailer.appointment_mail_to_admin(@appointment).deliver_later
      flash[:notice] = "The request for appointment created succesfully "
			redirect_to welcome_index_path

		else

		end
	end

	def renew_appointments
		if params[:id].present?
			@user = User.find(params[:id])
		else
			@user = User.where(reference_no: params[:reference]).last
		end
			if @user.present?
				@renew_appointment = @user.renewal_subscriptions.create(reference_no: params[:reference], date_of_appointment: params[:date_of_appointment], time_of_appointment: params[:time_of_appointment], reason: params[:reason], pay: params[:pay], phone: params[:phone])
				if @renew_appointment.save
					flash[:notice] = "Renewal is succesfull"
					if params[:id].present?
						redirect_to dashboard_index_path
					else
						redirect_to welcome_index_path
					end
				else
					flash[:alert] = "Renewal is not succesfull"
					if params[:id].present?
						redirect_to dashboard_index_path
					else
						redirect_to welcome_index_path
					end
				end
			else
				flash[:alert] = "User not found with reference no/id"
				if params[:id].present?
						redirect_to dashboard_index_path
					else
						redirect_to welcome_index_path
					end
			end
	end
end
