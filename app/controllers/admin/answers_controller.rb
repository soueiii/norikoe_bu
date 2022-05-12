class Admin::AnswersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @answer = Answer.find(params[:id])
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to admin_root_path
  end
end
