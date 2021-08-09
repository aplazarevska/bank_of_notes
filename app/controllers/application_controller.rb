class ApplicationController < ActionController::Base
  before_action :set_user_type

  def set_user_type
    @user_type = params[:user_type]
  end

  # include this here nad not in application_controller so it only applies to the listings and not to take me to new_listing when i just log in
  def after_sign_in_path_for(profile)
    if(current_user.profile)
      if(params[:user][:user_type] == "buyer")
        listings_path
      else
        root_path
      end
    elsif(params[:user][:user_type] == "seller")
        new_listing_path
    else
      new_profile_path(user_type: params[:user][:user_type]) || root_path
    end
  end
end
