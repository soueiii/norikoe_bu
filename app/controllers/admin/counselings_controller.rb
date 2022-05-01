class Admin::CounselingsController < ApplicationController
  def show
    @counseling = Counseling.find(params[:id])
  end

  def destroy
    @counseling = Counseling.find(params[:id])
    @counseling.destroy
    redirect_to admin_root_path
  end
end
