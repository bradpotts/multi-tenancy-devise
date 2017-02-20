::ApplicationController.class_eval do

  # Current Account Helper
  def current_account
    @current_account ||= env['Houser-Object']
  end
  helper_method :current_account

end
