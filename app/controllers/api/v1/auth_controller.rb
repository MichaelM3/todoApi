class Api::V1::AuthController < ApplicationController
  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user&.password_digest == params[:password]
      render json: @user, serializer: Api::V1::UserSerializer
    else
      render json: { errors: 'Username or password is incorrect!' }

    end
  end
end
