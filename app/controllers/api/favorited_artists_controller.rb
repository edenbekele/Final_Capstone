class Api::FavoritedArtistsController < ApplicationController
  def index
    @favorited_artists = FavoritedArtist.all
    render "index.json.jb"
  end

  def create
    @favorited_artist = FavoritedArtist.find_or_initialize_by(
      status: "favorited",
      user_id: current_user.id,
      artist_id: params[:artist_id],
    )
    if @favorited_artist.save
      render "show.json.jb"
    else
      render json: { errors: @favorited_artist.errors.full_messages }, status: 422
    end
  end

  def destroy
    @favorited_artist = FavoritedArtist.find_by(id: params[:id])
    @favorited_artist.destroy
    render json: { message: "Destroyed" }
  end

  def unfavorite
    @favorited_artist = FavoritedArtist.find_by(user_id: current_user.id, artist_id: params[:artist_id])
    @favorited_artist.destroy
    render json: { message: "Destroyed" }
  end
end
