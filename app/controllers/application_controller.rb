class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
   redirect_to login_path, notice: "You must log in to access this page" unless session[:user_id]
 end

 private def authenticate_teacher
   redirect_to :back, notice: "You do not have permission to access that page." unless session[:user_type] == "Teacher"
 end

 private def authenticate_student
      redirect_to root_path, notice: "You don't have permission to access that page." unless session[:user_type] == "Student"
  end

  private def authenticate_parent
      redirect_to root_path, notice: "You don't have permission to access that page." unless session[:user_type] == "Parent"
  end



end
