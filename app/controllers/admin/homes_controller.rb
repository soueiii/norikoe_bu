class Admin::HomesController < ApplicationController

before_action :authenticate_admin!

 def top
  @users = User.all
  @counselings = Counseling.all
  @answers = Answer.all
 end

end