class SessionsController < ApplicationController
  def new
  end

  def create
    user = params[:user_type].constantize.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_type] = params[:user_type]
      redirect_to send("#{params[:user_type].downcase.pluralize}_path"), notice: "You have succesfully logged in!"
      return
    end

    flash.now[:alert] = "Login failed: invalid email or password."
    render "new"
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to root_path, notice: "You have logged out."
  end
end
