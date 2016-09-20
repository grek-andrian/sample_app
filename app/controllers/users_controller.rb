class UsersController < ApplicationController
  def new
  	@user=User.new
  end

  def show
  	@user=User.find(params[:id])
    respond_to do |format|
    format.html
    format.json { render json: @article }
  end
  end

   def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      flash[:error] = 'Some error here!'
      render 'new'
    end
  end

  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :age, :gender, :occupation)
    end
end
