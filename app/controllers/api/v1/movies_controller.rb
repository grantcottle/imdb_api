class Api::V1::MoviesController < ApplicationController
  before_action :set_api_v1_movie, only: [:show, :update, :destroy]

  # GET /api/v1/movies
  def index
    @api_v1_movies = Movie.all

    render json: @api_v1_movies
  end

  # GET /api/v1/movies/1
  def show
    render json: @api_v1_movies
  end

  # POST /api/v1/movies
  def create
    @api_v1_movies = Movie.new(api_v1_movie_params)

    if @api_v1_movies.save
      render json: @api_v1_movies, status: :created, location: @api_v1_movies
    else
      render json: @api_v1_movies.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/movies/1
  def update
    if @api_v1_movies.update(api_v1_movie_params)
      render json: @api_v1_movies
    else
      render json: @api_v1_movies.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/movies/1
  def destroy
    @api_v1_movies.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_movie
      @api_v1_movies = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_movie_params
      params.fetch(:api_v1_movie, {})
    end
end
