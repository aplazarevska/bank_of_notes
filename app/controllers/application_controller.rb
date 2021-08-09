class ApplicationController < ActionController::Base
  before_action :set_user_type

  def set_user_type
    @user_type = params[:user_type]
  end

 
end
