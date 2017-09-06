module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
  
  def correct_user
    @task = current_user.tasks.find_by(id: params[:id])
  end
  
  def correct_user?
    !!correct_user
  end
end
