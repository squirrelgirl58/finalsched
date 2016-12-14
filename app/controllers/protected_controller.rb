class ProtectedController < ApplicationController

  def require_login
    unless session["student_id"]
      flash[:message] = "Please log in."
      redirect_to login_path
    end
  end

  before_action :require_login

    def index
      @student = Student.find(session[:student_id])
    end
end
