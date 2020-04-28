Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    get "/artists" => "artists#index"
    get "/artists/:id" => "artists#show"
    post "/artists" => "artists#create"

    get "/events" => "events#index"
    get "/events/:id" => "events#show"
  end
end
