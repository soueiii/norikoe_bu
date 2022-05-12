class ApplicationController < ActionController::Base
  before_action :set_search
  def set_search
    @search = Counseling.ransack(params[:q])
    @search_counseling = @search.result
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_root_path
    when User
      user_customer_path(resource)
    end
  end

  def after_sign_out_path_for(_resource)
    root_path
  end
end
