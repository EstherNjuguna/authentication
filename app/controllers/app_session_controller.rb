class AppSessionController < ApplicationController
def create
    uid =params[:uid].to_i
    session[:user_id] = uid
render json: {
    message: "session created"
}
end
def create_o
    username =params[:username]
    session[:username] = username
render json: {
    message: "session 3 created"
}
end
def create_s
    username =params[:username]
    session[:username] = username
render json: {
    message: "session 4 created"
}
end
def create_one
    uid =params[:uid].to_i
    session[:user_id] = uid
render json: {
    message: "session 2 created"
}
end
def show
 render json: {
    app_sessions: session
 }   
end
end
