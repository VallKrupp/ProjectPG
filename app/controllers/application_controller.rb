class ApplicationController < ActionController::Base
  include Pagy::Backend
  include SessionsHelper
  
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    user_path(resource) # your path
  end

end
