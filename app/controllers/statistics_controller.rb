class StatisticsController < ApplicationController

  def index
    @data_keys = [
      'Self',
      'Google',
      'GitHub',
    ]
    @data_values = User.user_providers.values
  end
end
