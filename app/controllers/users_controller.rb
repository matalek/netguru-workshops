class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.admin?
      @admin = 'Yes'
    else
      @admin = 'No'
    end
    @reviews = @user.reviews.order(created_at: :desc).first(5)
  end
end
