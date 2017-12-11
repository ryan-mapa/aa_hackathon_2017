class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= User.find_by_session_token(params[:session_token])
  end
  
  def login(user)
    @current_user = user
    params[:session_token] = @current_user.reset_session_token
  end
  
  def logout
    current_user.reset_session_token
    params[:session_token] = nil
    @current_user = nil
  end
  
  def logged_in?
    !!current_user
  end
  
  def ensure_login
    render json: ["Invalid credentials"], status: 404 unless logged_in?
  end
  
end
