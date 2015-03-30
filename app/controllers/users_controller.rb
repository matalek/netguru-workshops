class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.admin?
      @admin = 'Yes'
    else
      @admin = 'No'
    end
    @reviews = @user.reviews.order(created_at: :desc).first(5)
    if !@reviews.any?
      @none_reviews = true
    end
    @display_product = true
  end
end
