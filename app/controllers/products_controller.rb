class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product
    else
      render json: @product.errors.full_messages
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :price, :user_id)
  end
end
