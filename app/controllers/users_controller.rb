class UsersController < ApplicationController
	before_action :authenticate_user!
  
	def user
		@user = User.find(params[:id])
	end

	def index		
		@users = User.all		
		@users = @users - [User.find_by(is_admin: true)]
	end

	def edit

	end

	def update
		
	end
    
  def astro_upload
  	
    @user = User.find(params[:id])   	
  end

  def add_pdf
  	@user = User.find(params[:user_id])
    @user.astro_pdfs.create(avatar: params[:file])
    redirect_to users_url
  end

 
end
