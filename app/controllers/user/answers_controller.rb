class User::AnswersController < ApplicationController
  

  def create
   @counseling = Counseling.find(params[:counseling_id])
   @answer = current_user.answers.new(answer_params)
   @answer.counseling_id = @counseling.id
   if @answer.save
   redirect_to user_counseling_path(@answer.counseling.id)
   else
   render "user/counselings/show"
  end
 end

  def destroy
   Answer.find_by(id:params[:id]).destroy
   redirect_to user_counseling_path(params[:counseling_id])
  end

   private

  def answer_params
    params.require(:answer).permit(:content).merge(user_id: current_user.id, counseling_id: params[:counseling_id])
  end

end