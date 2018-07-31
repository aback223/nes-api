class UserController < ApplicationController
  def current
    current_user.update!(last_login: Time.now)
    render json: current_user
  end

  def create 
    user = User.new(user_params)
    if user.save
      render json: {status: 200, msg: 'User was created.'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def authorize
    return_unauthorized unless current_user
  end
end