class UserController < ApplicationController
    
  def create
    user = User.create(user_params)
    if user.valid?user_params
        render json: {
            message: "created succesfully"}, status: :created
        else
            render json: {
                error:user.errors.full_messages
            }, status: :unprocessable_entity
  end  
end
def login
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
        session[:uid] = user.id
        render json: {
            message: "login successfully"
        }, status: :ok
    else
        render json: {
                message: "unsuccessful"
            }, status: :unprocessable_entity
        
#         if user
#     authenticated = user.authenticate(params[:password])
#     if authenticated
#         session[:uid] = user.id
# render json: {
#     message: "created successfully"
# }, status: :created
# elsif
#     render json: {
#         message: "unsuccessful"
#     }, status: :unprocessable_entity   
# else
#     render json: {
#         message: "invalid username"
#     }, status: :unprocessable_entity   
# end
#     end
end
end
  private
  def user_params
    params.permit(:username, :password)

end
end