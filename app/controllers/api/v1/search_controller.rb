class Api::V1::SearchController < ApplicationController

  # GET /api/v1/search
  def search
    api_v1_movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    api_vi_shows =  Show.where("title ILIKE ?", "%#{params[:query]}%")

    @api_v1_search =   api_v1_movies + api_vi_shows

    render json: @api_v1_search
  end


  private
  

end
