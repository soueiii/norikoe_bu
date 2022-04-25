class User::CounselingsController < ApplicationController
  
   before_action :authenticate_user!, except: [:index]
  def new
    @counseling = Counseling.new
    @genres = Genre.all
  end

  def create
    @counseling = Counseling.new(counseling_params)
    @counseling.genre_id = params[:genre][:name]
    @counseling.user_id = current_user.id
    @counseling.save
    flash[:notic] = '投稿に成功しました！回答が来るのを待ちましょう。'
    redirect_to user_counseling_path(@counseling)
  end

  def show
    @counseling = Counseling.find(params[:id])
  end

  def edit
    @counseling = Counseling.find(params[:id])
    @genres = Genre.all
  end

  def update
    @counseling = Counseling.find(params[:id])
    @counseling.genre_id = params[:genre][:name]
    @counseling.update(counseling_params)
    redirect_to user_counseling_path(@counseling)
  end

  def destroy
    @counseling = Counseling.find(params[:id])
    @counseling.destroy
    redirect_to user_customer_path(current_user)
  end

   private

  def counseling_params
    params.require(:counseling).permit(:user_id, :genre, :title, :content, :level)
  end
end
