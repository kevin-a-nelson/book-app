Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/books" => "books#index"
    get "/books/:id" => "books#show"
    post "/books" => "books#create"
  end
end
