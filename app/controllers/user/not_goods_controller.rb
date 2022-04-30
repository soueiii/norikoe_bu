class User::NotGoodsController < ApplicationController
  def create
    NotGood.create(user_id: current_user.id, answer_id: params[:id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    NotGood.find_by(user_id: current_user.id, answer_id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end
  
end
