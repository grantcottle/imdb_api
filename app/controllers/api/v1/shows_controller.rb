class Api::V1::ShowsController < ApplicationController
  before_action :set_api_v1_show, only: [:show, :update, :destroy]

  # GET /api/v1/shows
  def index
    @api_v1_shows = Show.all

    render json: @api_v1_shows
  end

  # GET /api/v1/shows/1
  def show
    render json: @api_v1_shows
  end

  # POST /api/v1/shows
  def create
    @api_v1_shows = Show.new(api_v1_show_params)

    if @api_v1_shows.save
      render json: @api_v1_shows, status: :created, location: @api_v1_shows
    else
      render json: @api_v1_shows.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/shows/1
  def update
    if @api_v1_shows.update(api_v1_show_params)
      render json: @api_v1_shows
    else
      render json: @api_v1_shows.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/shows/1
  def destroy
    @api_v1_shows.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_show
      @api_v1_shows = Show.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_show_params
      params.fetch(:api_v1_show, {})
    end
end
