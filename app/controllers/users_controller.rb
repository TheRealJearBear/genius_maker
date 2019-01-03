class UsersController < ApplicationController
  before_action :authorize_user, except: [:index, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy.id
    redirect_to park_path(parks), notice: 'User has been terminated!'
  end

  private
  ##I've commented this out as I might need it in the future?
  # def user_params
  #   params.require(:user).permit(:username, :first_name, :last_name, :email, :date_of_birth, :user_photo)
  # end

  def authorize_user
    if !current_user.superadmin_role
      raise ActionController::RoutingError.new("You are not authorized to do that!")
    end
  end
end
