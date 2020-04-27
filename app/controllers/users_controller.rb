class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    render :show, formats: 'json', handlers: 'jbuilder'
  end
end
