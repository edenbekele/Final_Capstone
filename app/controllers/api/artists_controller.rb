class Api::ArtistsController < ApplicationController
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
      render "show.json.jb"
    else
      render json: { errors: @artist.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
