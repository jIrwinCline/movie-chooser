class MoviesController < ApplicationController

include API

  def index
    response = API::Interface.call("/movies")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def show
    response = API::Interface.call("/movies/#{params[:id]}")
    @movie = JSON.parse(response)
    render :show
  end

  def random
    response = API::Interface.call("/random")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def longest
    response = API::Interface.call("/longest")
      @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def rating
    response = API::Interface.call("/rating")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def popular
    response = API::Interface.call("/popular")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def letter
    letter = params[:letter]
    response = API::Interface.call("/letter/#{letter}")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def title
    title = params[:title]
    title = title.gsub(" ", "%20")
    response = API::Interface.call("/title/#{title}")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end

  def year_released
    year = params[:year]
    response = API::Interface.call("/year_released/#{year}")
    @movies = JSON.parse(response).paginate(params[:page], 100)
    render :index
  end
end
