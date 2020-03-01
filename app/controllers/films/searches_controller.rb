class Films::SearchesController < ApplicationController
  def index
    @films = Film.search(params[:keyword])
  end
end
