class Api::ArtistsController < ApplicationController
  # before_action :authenticate_user

  def index
    @artists = Artist.all
    render "index.json.jb"
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @artist = Artist.create!(
      name: params[:name],
      description: params[:description],
      bio: params[:bio],
      image: params[:image],
    )
    if @artist.save
      render json: @artist
    else
      render json: { errors: @artist.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
