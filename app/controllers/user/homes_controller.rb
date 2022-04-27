class User::HomesController < ApplicationController
  def index
    @counselings = Counseling.all
    @count = Counseling.count
  end
end
