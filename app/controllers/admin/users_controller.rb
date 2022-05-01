class Admin::UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    redirect_to admin_root_path
  end
  
end
