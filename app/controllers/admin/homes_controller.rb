class Admin::HomesController < ApplicationController
  
 def index  
  @user = User.all
  @counselings = Counseling.all
  @answers = Answer.all
 end
end