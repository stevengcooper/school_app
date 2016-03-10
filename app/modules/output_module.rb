module Output

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

    def self.parent_grades
      if session[:user_type] == "Parent"
        parent = Parent.find(session[:user_id])
        @grades = Grade.where(student_id: parent.student_id))
      else
        redirect_to parents_path, notice: "Your child doesn't have any grades posted yet."
      end
    end
