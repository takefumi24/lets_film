class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @A = Review.pluck(:film_id).group_by(&:itself).keys
    @data = []
    @A.each do |a|
      @B = Review.where(film_id: a).pluck(:feeling_id).group_by(&:itself).values
      @B.each do |b|
        @data << b.count
        return @data
      end
    end
  end

  def new
    @film = Film.find(params[:film_id])
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @film = Film.find(params[:film_id])
    film = Film.find_by(id: params[:film_id])
    id = film.getMaxfeeling
    film.update(feeling_id: id)
    redirect_to film_path(@film)
  end

  def destroy
    @film = Film.find(params[:film_id])
    review = Review.find(params[:id])
    review.destroy
    redirect_to film_path(@film)
  end

  def edit
    @film = Film.find(params[:film_id])
    @review = Review.find(params[:id])
  end

  def update
    @film = Film.find(params[:film_id])
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to film_path(@film)
  end

  private
  def review_params
    params.require(:review).permit(:text, :feeling_id, :film_id).merge(user_id: current_user.id)
  end

  def feeling_count
    @A = Review.pluck(:film_id)

  end
end
