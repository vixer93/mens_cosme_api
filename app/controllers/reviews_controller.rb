class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      product_point = Review.calculate_average_point(@review.product.id)
      @review.product.update(point: product_point)
      render json: @review
    else
      render json: @review.errors.full_messages
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :point, :content, :user_id).merge(product_id: params[:product_id])
  end

end
