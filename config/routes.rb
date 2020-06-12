Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    # get "/users/:id" => "users#show"
    get "/my_artists" => "users#my_artists"

    post "/sessions" => "sessions#create"

    get "/artists" => "artists#index"
    get "/artists/new" => "artists#new"
    get "/artists/:id" => "artists#show"
    post "/artists" => "artists#create"
    delete "/artists/:id" => "artists#destroy"

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"

    get "/favorited_artists" => "favorited_artists#index"
    post "/favorited_artists" => "favorited_artists#create"
    delete "/favorited_artists/:id" => "favorited_artists#destroy"
    delete "/unfavorite/:artist_id" => "favorited_artists#unfavorite"

    get "/events" => "events#index"
    get "/events/:id" => "events#show"
    post "/events" => "events#create"

    get "/artist_events" => "artist_events#index"
    post "/artist_events" => "artist_events#create"
  end
end
