Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/cookies', to:"app_cookies#show"
  post '/cookies/create/:data', to: "app_cookies#create"
end
