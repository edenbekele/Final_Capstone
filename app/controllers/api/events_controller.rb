class Api::EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jb"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @event = Event.new(
      name: params[:name],
      date: params[:date],
      location: params[:location],
      description: params[:description],
    )
    if @event.save
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
