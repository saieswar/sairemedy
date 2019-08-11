class UsersController < ApplicationController
	before_action :authenticate_user!
  
	def user
		@user = User.find(params[:id])
	end

	def index		
		if params[:search_data].present?
			@users = User.all.where.not(is_admin: true).where("name LIKE ? OR id LIKE ?","%#{params[:search_data]}%","%#{params[:search_data]}%" )
		else
			@users = User.all		
			@users = @users - [User.find_by(is_admin: true)]
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		# raise params.inspect
		if @user.update(name: params[:user][:name], surname: params[:user][:surname], phone: params[:user][:phone], date_of_birth: params[:user][:date_of_birth], time_of_birth: params[:user][:time_of_birth], address: params[:user][:address])
			redirect_to users_path
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
    
  def astro_upload
    @user = User.find(params[:id])   	
  end

  def add_pdf
  	@user = User.find(params[:user_id])
    @user.astro_pdfs.create(avatar: params[:file])
    redirect_to users_url
    flash[:notice] = "The request from the user Astrology File Uploaded Successfully for #{@user.email}"
    
  end
end