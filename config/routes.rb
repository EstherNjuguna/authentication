Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/cookies', to:"app_cookies#show"
  get '/sessions', to:"app_session#show"
  post '/sessions/create/:uid', to: "app_session#create"
  post '/cookies/create/:data', to: "app_cookies#create"
  post '/sessions/create_one/:uid', to: "app_session#create_one"
  post '/sessions/create_o/:username', to: "app_session#create_o"
  post '/sessions/create_s/:username', to: "app_session#create_s"
post '/people/login', to: "people#login"
get '/people/show', to: "people#show"
delete '/people/logout', to: "people#logout"
end
