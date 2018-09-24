class RegistrationsController < Devise::RegistrationsController
	def new
    super    
  end

  def create

    user = User.create!(sign_up_params)

    if user
      flash[:notice] = "User created successfully"
      redirect_to new_user_session_path   
      # case params[:role]
      # when User::TYPE_PANDIT
      

      # when User::TYPE_PAID_USER

      # when User::TYPE_FREE_USER

      # else

      # end


    else
    	flash.now[:alert] = "User creation faild"
    	render 'new'
    end


    # super do
    #   resource.tag_list = params[:tags]
    #   resource.save
    # end


  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email,  :password, :password_confirmation, :aadhar_card, :phone, :reference, :address, :avatar,:gender, :serial_no, :dob, :role, :is_paid, :pandit_attributes => [:deals, :door_no, :street, :city, :state, :zip_code, :working_as, :experience, :address, :district]);
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :name, :aadhar_card, :phone, :reference, :address, :avatar,:gender, :serial_no, :dob, :role, :pandit_attributes => [:deals, :door_no, :street, :city, :state, :zip_code, :working_as, :experience, :address, :district]);
  end

end
