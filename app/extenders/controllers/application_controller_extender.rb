::ApplicationController.class_eval do

  def current_account
    @current_account ||= env['Houser-Object']
  end

  helper_method :current_account

end
