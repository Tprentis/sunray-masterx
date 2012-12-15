class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :choose_layout
  expose(:current_account){ 
    current_user.account
  }
  
 
private
  def choose_layout
    if user_signed_in?
      'account'
    else
      'application'
    end
  end
end
