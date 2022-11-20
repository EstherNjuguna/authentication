class PeopleController < ApplicationController
def login
username = params[:username]
password= params[:password]
end
def logout
end
private
def person_params
    params.permit(:username, :password)
end

end
