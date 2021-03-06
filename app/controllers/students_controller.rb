class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?



  # GET /students
  def index
    if session[:user_type] == "Teacher"
      authenticate_teacher
      @students = Student.where(teacher_id: [session[:user_id]])
      authenticate_student
    elsif session[:user_type] == "Student"
      @students = Student.where(id: session[:user_id])
    elsif session[:user_type] == "Parent"
      authenticate_parent
      @students = Student.where(parent_id: [session[:user_id]])
    end
  end

  # GET /students/1
  def show

  end

  # GET /students/new
  def new
    authenticate_teacher
    @student = Student.new
    @teacher = Teacher.where(id: session[:user_id])
  end

  # GET /students/1/edit
  def edit

  end

  # POST /students
  def create
    authenticate_teacher
    @student = Student.new(student_params)

    if @student.save
      redirect_to teachers_path, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/1
  def destroy
    authenticate_teacher
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:name, :teacher_id, :email, :password)
    end
end
