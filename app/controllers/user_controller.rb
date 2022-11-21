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
  private
  def user_params
    params.permit(:username, :password)
end
end
