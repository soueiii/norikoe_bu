class Admin::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @counselings = @user.counselings.reverse_order
    @answers = @user.answers.reverse_order
  end

  def update
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    redirect_to admin_root_path
  end
end
