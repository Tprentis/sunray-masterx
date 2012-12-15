class Admins::AccountsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'dashboard'	
  expose(:accounts) { Account.scoped{} }
  expose(:account)
  def create
    if account.save
      flash[:notice] = 'Account was successfully created.'
      redirect_to admins_accounts_path
    else
      render action: "new"
    end
  end

  def update
    if account.save
      flash[:notice] = 'Account was successfully updated.'
      redirect_to admins_accounts_path
    else
      render action: "new"
    end
  end

  def destroy
    account.destroy
    redirect_to admins_accounts_path
  end
end
