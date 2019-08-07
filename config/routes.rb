Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/books" => "books#index"
    get "/books/:id" => "books#show"
    post "/books" => "books#create"
    patch "/books/:id" => "books#update"
    delete "/books/:id" => "books#destroy"
  end
end
