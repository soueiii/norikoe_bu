class User::HomesController < ApplicationController
  def index
    @counselings = Counseling.all.order(created_at: :desc).page(params[:page]).per(5)
    @count = Counseling.count
  end
end
