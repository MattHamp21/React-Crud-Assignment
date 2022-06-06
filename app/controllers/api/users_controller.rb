class Api::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index 
    users = User.all
    render json: users
  end

  def show
    render json: @user
  end


  def create 
  
  puts params
  user = User.new(user_params)
  if(user.save)
  render json: user 

  else
    render json: {error: item.error.full_messages}, status: 422

  end

end

  def update
    if @user.update(user_params)
      render json: @user
      else
        render json: {errors: @user.errors.full_messages}, status: 422
      end
  end

  def destroy 
    render json: @user.destroy
  end

def user_params 
  return params.require(:user).permit(:username, :age)
end

end
