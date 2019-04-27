class UserMailer < ApplicationMailer
	default from: "remedyvans@gmail.com"
	def appointment_mail_to_admin(appointment)
		email = "remedyvans@gmail.com"
		@appointment = appointment 
    mail(to: email, subject: "Requested appointment - #{@appointment.name}")
	end
end
