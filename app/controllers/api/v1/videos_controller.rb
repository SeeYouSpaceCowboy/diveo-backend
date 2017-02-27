class Api::V1::VideosController < ApplicationController
  def index
    @videos = Video.all

    render json: @videos
  end

  def create
    @video = Video.create(strong_params)

    if @video
      render json: @video
    else
      render json: { error: "Video failed to be created" }, status: 400
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    render json: { success: true }
  end

  private

    def strong_params
      params.require(:video).permit(:title, :url, :user_id)
    end
end
