class Admins::SessionsController < Devise::SessionsController
  #ssl_exceptions
  layout 'admins'
  def after_sign_in_path_for(resource)
     admins_dashboards_path
  end
end
