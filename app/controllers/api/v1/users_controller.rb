class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {
        message: "Successfully created an account."},
        status: 201
      elsif User.find_by_email(user_params["email"])
        render json: {error: "User already exists."},
        status: 409
      else
        render json: {error: "Bad request."},
        status: 400
      end
    end

  # def rooms_by_user(username)
  #   User.joins(:rooms)
  #   .where(:username == username)
  # end

  private
  def user_params
    params.permit(:email, :username)
  end
end
