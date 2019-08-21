class MoviesController < ApplicationController

include API

  def index
    response = API::Interface.call("/movies")
    @movies = JSON.parse(response)
  end

  def random
    response = API::Interface.call("/random")
  end
end
