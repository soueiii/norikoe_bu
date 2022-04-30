class User::HomesController < ApplicationController
  def index
    @counselings = Counseling.all.order(created_at: :desc)
    @count = Counseling.count
  end
  
end
 
 