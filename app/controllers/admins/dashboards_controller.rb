class Admins::DashboardsController < AdminController
	before_filter :authenticate_admin!
  #ssl_exceptions
  layout 'dashboard'
  def index
  end
end
