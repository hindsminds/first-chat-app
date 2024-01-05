class UsersController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
  
    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
  
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
  