class AuthenticateController < ApplicationController
  before_action :authenticate
  before_action :set_authenticate, only: [:login, :logout]

  def login
    if request.post?
      user =User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
      session[:user_id] = user.id
        redirect_to dishes_path, notice: "Login successful."
      else
        flash{:notice} = "Password attempt unsuccessful."
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to authenticate_login_path, notice: "See you soon."
  end

  private def authenticate
    if session[:user_id].nil?
      redirect_to authenticate_login_path, notice: "Nice try."
    end
  end
end
