class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    user_customer_path(resource)
  end

  def after_sign_out_path_for(_resource)
    user_root_path
  end
end
