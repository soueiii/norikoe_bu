class Admin::HomesController < ApplicationController

 def top
  @users = User.all
  @counselings = Counseling.all
  @answers = Answer.all
 end
 
 
end