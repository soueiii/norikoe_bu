class User::GoodsController < ApplicationController

  def create
    Good.create(user_id: current_user.id, answer_id: params[:id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    Good.find_by(user_id: current_user.id, answer_id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end
end
