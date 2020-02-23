class FilmsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]

  def index
    @films = Film.new
  end

  def show
    @film = Film.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
