class ProductCategoriesController < ApplicationController

  def index
    @categories = Category.where(ancestry: nil)
    render json: @categories
  end

  def show
    @small_categories = Category.where(ancestry: params[:id])
    render json: @small_categories
  end
end
