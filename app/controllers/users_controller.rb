class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
		# all new users are not admins by default
		@user.administrator = false
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end
	
	def panel
		@user = User.find(params[:id])
		
		@programs = Program.all
		@requirements = ProgramRequirement.all
		
		@users = User.all
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		# @user.first_name = params[:first_name]
		# @user.last_name = params[:last_name]
		# @user.email = params[:email]
		# @user.administrator = params[:administrator]
		if @user.update_attributes(user_params)
			redirect_to root_url, notice: 'User successfully updated!'
		else
			flash.now[:danger] = 'Update failed!'
			redirect_back fallback_location: root_url
		end
	end
	
  private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :administrator, :password, :password_confirmation)
    end
end