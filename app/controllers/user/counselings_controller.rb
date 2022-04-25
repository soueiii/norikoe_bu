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
    @user = User.find(params[:id])
    @counseling = Counseling.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

   private

  def counseling_params
    params.require(:counseling).permit(:user_id, :genre, :title, :content, :level)
  end
end
