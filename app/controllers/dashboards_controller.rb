class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]
  before_action :move_forward

  # GET /dashboards
  def index
    @dashboards = Dashboard.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dashboard_params
      params[:dashboard]
    end

    def move_forward
      if session[:user_type] == "Teacher"
        redirect_to teachers_path
      elsif session[:user_type] == "Student"
        redirect_to students_path
      elsif session[:user_type] == "Parent"
        redirect_to parents_path
      end
    end
end
