class Api::ArtistEventsController < ApplicationController
  def index
    @artist_events = ArtistEvent.all
    render "index.json.jb"
  end

  def create
    @artist_event = ArtistEvent.new(
      status: "saved",
      user_id: current_user.id,
      artist_id: params[:artist_id],
      event_id: params[:event_id],
    )
    if @artist_event.save
      render "show.json.jb"
    else
      render json: { errors: @artist_event.errors.full_messages }, status: 422
    end
  end
end
