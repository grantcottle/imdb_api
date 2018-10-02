class Api::V1::ShowsController < ApplicationController
  before_action :set_api_v1_show, only: [:show, :update, :destroy]

  # GET /api/v1/shows
  def index
    @api_v1_shows = Api::V1::Show.all

    render json: @api_v1_shows
  end

  # GET /api/v1/shows/1
  def show
    render json: @api_v1_show
  end

  # POST /api/v1/shows
  def create
    @api_v1_show = Api::V1::Show.new(api_v1_show_params)

    if @api_v1_show.save
      render json: @api_v1_show, status: :created, location: @api_v1_show
    else
      render json: @api_v1_show.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/shows/1
  def update
    if @api_v1_show.update(api_v1_show_params)
      render json: @api_v1_show
    else
      render json: @api_v1_show.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/shows/1
  def destroy
    @api_v1_show.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_show
      @api_v1_show = Api::V1::Show.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_show_params
      params.fetch(:api_v1_show, {})
    end
end
