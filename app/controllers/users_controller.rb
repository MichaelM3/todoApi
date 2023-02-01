class UsersController < ApplicationController
  require 'json'

  def index
    @users = User.all
    render json: @users, status: :ok
  end
end
