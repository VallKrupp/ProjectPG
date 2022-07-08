class StatisticsController < ApplicationController

  def index
    @doughnut_data_keys = [
      'Self',
      'Google',
      'GitHub',
    ]
    @doughnut_data_values = User.user_providers.values

    @mixed_data_keys = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
    ]
    @mixed_data_values = [0, 10, 5, 2, 20, 30, 45]

  end

end
