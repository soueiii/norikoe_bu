class User::CounselingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :correct_counseling, only: [:edit]

  def new
    @counseling = Counseling.new
    @genres = Genre.all
  end

  def create
    @counseling = Counseling.new(counseling_params)
    @genres = Genre.all
    @counseling.genre_id = params[:genre][:name]
    @counseling.user_id = current_user.id
    if @counseling.save
      flash[:notic] = '投稿に成功しました！回答が来るのを待ちましょう。'
      redirect_to user_counseling_path(@counseling)
    else
      render 'user/counselings/new.html.erb'
    end
  end

  def show
    @counseling = Counseling.find(params[:id])
    @answer = Answer.new
    @user = @counseling.user
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

  def search
    @counseling = Counseling.all
    @count = @search_counseling.count
  end

  private

  def counseling_params
    params.require(:counseling).permit(:user_id, :genre, :title, :content, :level)
  end

  def correct_counseling
    @counseling = Counseling.find(params[:id])
    redirect_to root_path unless @counseling.user.id == current_user.id
  end
end
