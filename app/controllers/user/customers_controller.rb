class User::CustomersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @counselings = current_user.counselings.all
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
    @user = User.find(params[:id])
  end

  def unsubscribe
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    flash[:notic] = 'またお悩みがあればいつでもお待ちしております。ご利用ありがとうございました。'
    redirect_to user_root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :self_introduction, :club, :email, :name)
  end
end
