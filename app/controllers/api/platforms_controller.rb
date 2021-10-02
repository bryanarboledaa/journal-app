module Api
  class PlatformsController < ApplicationController
    def index
      genres = Rawg::Client.genres

      render json: genres
    end
  end
end