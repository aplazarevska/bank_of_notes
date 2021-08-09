class ApplicationController < ActionController::Base
#   the action performed depends if the user is buyer or seller 
  before_action :set_user_type

#   setting the params for the method used in before_action 
  def set_user_type
    @user_type = params[:user_type]
  end

  # defines where will the user be taken after signing in depending on the user_type (buyer or seller or returning)
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
