module SessionsHelper

  def sign_in(user)
    session_token = User.new_session_token
    cookies.permanent[:session_token] = session_token
    user.update_attribute(:session_token, User.hash(session_token))
    self.current_user = user
  end

  def sign_out
    current_user.update_attribute(:session_token, User.hash(User.new_session_token))
    cookies.delete(:session_token)
    self.current_user = nil
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    session_token = User.hash(cookies[:session_token])
    @current_user ||= User.find_by(session_token: session_token)
  end

  def signed_in?
    !!current_user
  end

end
