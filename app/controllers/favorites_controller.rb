class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = Favorite.new(user_id: current_user.id,
                             product_id: params[:product_id])
    if @favorite.save
      render json: {favorite: true}
    else
      render json: {favorite: false}
    end
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id,
                                product_id: params[:product_id])
    if favorite.destroy
      render json: {favorite: false}
    else
      render json: {favorite: true}
    end
  end
end
