class Api::FavoritedArtistsController < ApplicationController
  def index
    @favorited_artists = FavoritedArtist.all
    render "index.json.jb"
  end

  def create
    @favorited_artist = FavoritedArtist.new(
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
end
