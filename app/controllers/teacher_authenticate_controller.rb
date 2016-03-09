class TeacherAuthenticateController < ApplicationController

  def login
    if request.post?
      teacher = Teacher.find_by(email: params[:email])
      if teacher && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
        redirect_to teachers_path, notice: "Login successful."
      else
        flash[:notice] = "Password attempt unsuccessful."
      end
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to teachers_path, notice: "See you soon."
  end

end
