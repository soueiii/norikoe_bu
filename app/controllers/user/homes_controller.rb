class User::HomesController < ApplicationController
  def index
    @genres = Genre.all
  end
end
