class TrailersController < ApplicationController
  before_action :set_trailer, only: [:show, :update, :destroy]

  # GET /trailers
  # GET /trailers.json
  def index
    @trailers = Trailer.all

    render json: @trailers
  end

  # GET /trailers/1
  # GET /trailers/1.json
  def show
    render json: @trailer
  end

  # POST /trailers
  # POST /trailers.json
  def create
    @trailer = Trailer.new(trailer_params)

    if @trailer.save
      render json: @trailer, status: :created, location: @trailer
    else
      render json: @trailer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trailers/1
  # PATCH/PUT /trailers/1.json
  def update
    @trailer = Trailer.find(params[:id])

    if @trailer.update(trailer_params)
      head :no_content
    else
      render json: @trailer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trailers/1
  # DELETE /trailers/1.json
  def destroy
    @trailer.destroy

    head :no_content
  end

  private

    def set_trailer
      @trailer = Trailer.find(params[:id])
    end

    def trailer_params
      params.require(:trailer).permit(:title, :video, :length)
    end
end
