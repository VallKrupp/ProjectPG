class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[landing_page]


end
