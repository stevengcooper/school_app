class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?


  def index
    if session[:user_type] = "Parent"
      @parents = Parent.where(id: session[:user_id])
    elsif session[:user_type] = "Student"
      @parents = Parent.where(student_id: session[:user_id])
    elsif session[:user_type] = "Teacher"
      teacher = session[:user_id]
      @students = Student.where(teacher_id: session[:user_id])
      @parents = Parent.where(student_id: teacher.students.where(teacher_id: teacher.id))

    end
  end

  # GET /parents/1
  def show
  end

  # GET /parents/new
  def new
    @teacher = Teacher.where(id: session[:user_id])
    @parent = Parent.new
  end

  # GET /parents/1/edit
  def edit
  end

  # POST /parents
  def create
    @parent = Parent.new(parent_params)

    if @parent.save
      redirect_to teachers_path, notice: 'Parent was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /parents/1
  def update
    if @parent.update(parent_params)
      redirect_to teachers_path, notice: 'Parent was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /parents/1
  def destroy
    @parent.destroy
    redirect_to parents_url, notice: 'Parent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parent_params
      params.require(:parent).permit(:name, :student_id, :email, :password)
    end
end
