class DashboardImagesController < ApplicationController
	def new
		@dashboard_image = DashboardImage.new
	end

	def create
		# raise params.inspect
		@dashboard_image = DashboardImage.new(image: image_params[:image], description: image_params[:description])
		if @dashboard_image.save
			redirect_to dashboard_images_path
		else
			render 'new'
		end
	end

	def index
		@dashboard_images = DashboardImage.all.order('created_at DESC')
	end

	def destroy
		@dashboard_image = DashboardImage.find(params[:id])
		@dashboard_image.destroy
		redirect_to dashboard_images_path
	end

	# private 

	def image_params
	  params.require(:dashboard_image).permit(:image,:description)
	end

end
