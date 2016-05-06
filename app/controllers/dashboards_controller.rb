class DashboardsController < ApplicationController
  # before_action :move_forward


  # GET /dashboards
  def index

  end

  private

    # def move_forward
    #   if session[:user_type] == "Teacher"
    #     redirect_to teachers_path
    #   elsif session[:user_type] == "Student"
    #     redirect_to students_path
    #   elsif session[:user_type] == "Parent"
    #     redirect_to parents_path
    #   end
    # end
end
