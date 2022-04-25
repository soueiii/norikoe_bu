class User::CustomersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_customer_path(@user.id)
  end

  def confirm
  end

  def unsubscribe
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :self_introduction, :club, :email, :name)
  end
end

