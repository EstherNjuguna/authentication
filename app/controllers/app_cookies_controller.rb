class AppCookiesController < ApplicationController
def create
    data = params[:data]
    cookies[:info] = data
    render json:{
        message: "Cookie created"
    }
end
def show
    render json: {
        appcookies: cookies
    }
    end
end
