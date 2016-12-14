class ProtectedController < ApplicationController

  def require_login
    unless session["student_id"]
      flash[:message] = "Please log in."
      redirect_to login_path
    end
  end

  def check_admin
    unless session["admin"]
      flash[:message] = "Admin access only!"
      redirect_to home
    end
  end

  before_action :require_login
    def index
      @student = Student.find(session[:student_id])
    end
end
