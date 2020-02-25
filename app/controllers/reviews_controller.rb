class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @film = Film.find(params[:film_id])
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to root_path
  end

  def destroy
    review = review.find(params[:id])
    review.destroy
  end

  def edit
    @review = review.find(params[:id])
  end

  def update
    review = review.find(params[:id])
    review.update(review_params)
  end

  private
  def review_params
    params.require(:review).permit(:text, :feeling_id, :film_id).merge(user_id: current_user.id)
  end
end
