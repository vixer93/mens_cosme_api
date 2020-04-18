class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:images).order("id DESC")
    render :index, formats: 'json', handlers: 'jbuilder'
  end

  def show
    @product = Product.find(params[:id])
    render :show, formats: 'json', handlers: 'jbuilder'
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render :create, formats: 'json', handlers: 'jbuilder'
    else
      render json: @product.errors.full_messages
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :price, :user_id, :category_id, images_attributes: [:name])
      # .merge(user_id: current_user.id)
  end
end
