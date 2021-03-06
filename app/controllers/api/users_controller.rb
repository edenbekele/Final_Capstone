class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    if user.save
      render json: { message: "Account successfully created!" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def my_artists
    @user = User.find_by(id: current_user.id)
    render "show.json.jb"
  end

  def show
    @user = User.find_by(admin: current_user.admin)
    render "show.json.jb"
  end
end
