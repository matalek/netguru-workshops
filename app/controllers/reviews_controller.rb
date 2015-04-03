class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :ensure_owner!, only: [:edit, :destroy]

  expose(:category)
  expose(:review)
  expose(:product)

  def edit
  end

  def create
    self.review = Review.new(review_params)
    review.user = current_user

    if review.save
      product.reviews << review
      current_user.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating, :product_id)
    end

    def ensure_owner!
      unless self.product.review.user == current_user
        flash[:error] = 'You are not allowed to edit this review.'
        redirect_to category_product_url(category, product)
        return false
      end
    end
end
