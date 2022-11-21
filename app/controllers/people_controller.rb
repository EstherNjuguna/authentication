
class PeopleController < ApplicationController
before_action :authorized?
skip_before_action :authorized?, only: [:login, :createaccount]
def login
    hashed_password = Digest::MD5.new
        
username = params[:username]
    hashed_password.update(params[:password])

# password= params[:password]
user = Person.where(
    username: username, password: hashed_password.hexdigest
).first
if user
    session[:user] = user.id
    render json: {
        message: "successfully login",
        data: user
    }, status: :ok

   else
    render json: {
        message: 'failed login'
    }, status: :unauthorized
    
   end
end
def show
    users =Person.all
    render json:{
        people: users
    }
end
def createaccount
    hashed_password = Digest::MD5.new
    hashed_password.update(params[:password])
    
    essy = Person.create(username: params[:username],password: hashed_password.hexdigest)
render json: {
    message: "created successfully"}, status: :created
end
def logout
    session.delete :user
    render json: {
        message: "log out succesefully"
    }
end
private
def person_params
    params.permit(:username, :password)
end
def authorized? 

return render json:{
    message: "failed",
    error: "You are not authorized to view this page"},status: :unathorizd unless session.include? :user
end

end
