class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(product_id: params[:product_id]).order("id DESC")
    render :index, formats: 'json', handlers: 'jbuilder'
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      product_point = Review.calculate_average_point(@review.product.id)
      @review.product.update(point: product_point)
      render :create, formats: 'json', handlers: 'jbuilder'
    else
      render json: @review.errors.full_messages
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :point, :content, :user_id).merge(product_id: params[:product_id])
  end

end
