class WelcomeController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.create!(users_params)
      respond_to do |format|
       format.js
      end
  end

private

  def users_params
    params.require(:user).permit(:name, :email)
  end
end
