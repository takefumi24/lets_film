class FilmsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    # @films = Film.all
    id = params[:feeling_id]
    # @films = Film.where(feeling_id:id)
    # @jfilms = Film.where(text: "邦画")
    # @wfilms = Film.where(text:"洋画")
    # return @films = Film.all unless id
    # @j_films = @films.where(text:"邦画")
    # @w_films = @films.where(text:"洋画")
    if id == nil
      @j_films = Film.where(text: "邦画")
      @w_films = Film.where(text:"洋画")
    else
      @films = Feeling.find(id).films
      @j_films = @films.where(text:"邦画")
      @w_films = @films.where(text:"洋画")
    end
  end

  def new
    @film = Film.new
  end

  def create
    Film.create(film_params)
    redirect_to root_path
  end

  def show
    @film = Film.find(params[:id])
    @reviews = @film.reviews
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  private
  def film_params
    params.require(:film).permit(:text,:title,:image).merge(user_id: current_user.id)
  end
end
