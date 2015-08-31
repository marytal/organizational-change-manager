class RegisteredUsersController < ApplicationController

  def create
    @registered_user = RegisteredUser.where(username: user_params[:username]).first_or_create
    session[:current_registered_user_id] = @registered_user.id
    redirect_to new_ticket_path
  end

  private

  def user_params
    params.require(:registered_user).permit(:username)
  end
end
