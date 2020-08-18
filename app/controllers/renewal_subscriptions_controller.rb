class RenewalSubscriptionsController < ApplicationController
	def index
		user = User.find_by(id: params[:user_id])
		if user.present?
			@renewal_subscriptions = user.renewal_subscriptions
		else
			redirect_to users_path,alert: "user not present"
		end
	end
end
