class Admin::AnswersController < ApplicationController

  def show
    @answer = Answer.find(params[:id])
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to admin_root_path
  end
end
