class LoginController < ApplicationController
  def index
  end

  def authenticate
    @student = Student.find_by(netid: params[:netid], password: params[:password])
    if @student
      flash[:message] = "Welcome #{@student.f_name}"

      session[:student_id] = @student.id
      redirect_to home_path
    else
      flash[:message] = "You have not been logged in. Student can't be found"
      redirect_to login_path
    end

  end

  def logout
    session[:student_id] = nil
    flash[:message] = "You have been logged out"
    redirect_to login_form
  end
end
