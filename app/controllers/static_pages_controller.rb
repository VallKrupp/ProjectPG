class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[landing_page]
  def landing_page
    @data_keys = [
      'Self',
      'Google',
      'GitHub',
    ]
    @data_values = User.user_providers.values
  end

end
