Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/artists" => "artists#index"
    get "/artists/:id" => "artists#show"
    post "/artists" => "artists#create"

    get "/favorited_artists" => "favorited_artists#index"
    post "/favorited_artists" => "favorited_artists#create"

    get "/events" => "events#index"
    get "/events/:id" => "events#show"
    post "/events" => "events#create"

    get "/artist_events" => "artist_events#index"
    post "/artist_events" => "artist_events#create"
  end
end
