class CommentsController < ApplicationController

  def index
    @film = Film.find(params[:film_id])
    @reviews = @film.reviews
    @review = Review.find(params[:review_id])
    @comment = Comment.new
    @comments = @review.comments
  end

  def create
    @review = Review.find(params[:review_id])
    Comment.create(comment_params)
    redirect_to film_review_comments_path
  end

  def edit
    @film = Film.find(params[:film_id])
    @review = Review.find(params[:id])
  end

private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, review_id: @review.id)
  end

end
