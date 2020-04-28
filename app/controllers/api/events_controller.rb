class Api::EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jb"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jb"
  end
end
