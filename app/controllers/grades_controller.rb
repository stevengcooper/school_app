class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  # GET /grades
  def index
    if session[:user_type] == "Parent"
      parent = Parent.find(session[:user_id])
      @grades = Grade.where(student_id: parent.student_id)
    elsif session[:user_type] == "Student"
      @grades = Grade.where(id: session[:user_id])
    elsif session[:user_type] == "Teacher"
      @grades = Grade.where(teacher_id: session[:user_id])
    end
  end

  # GET /grades/1
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
    @teacher = Teacher.find(session[:user_id])
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to grades_path, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      redirect_to @grade, notice: 'Grade was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grades/1
  def destroy
    @grade.destroy
    redirect_to grades_url, notice: 'Grade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grade_params
      params.require(:grade).permit(:score, :date, :assignment_name, :student_id, :teacher_id)
    end
end
