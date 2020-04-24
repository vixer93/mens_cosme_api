class UserAgesController < ApplicationController

  def index
    @ages = User.ages_i18n.values
    render json: @ages
  end
end
