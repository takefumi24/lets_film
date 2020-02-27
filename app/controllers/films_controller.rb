class FilmsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    # @films = Film.all
    id = params[:feeling_id]
    # @films = Film.where(feeling_id:id)
    return @films = Film.all unless id
    @films = Feeling.find(id).films

  end

  def show
    @film = Film.find(params[:id])
    @reviews = Review.all
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
