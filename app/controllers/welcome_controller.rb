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

  def partner
  end

  def about
  end

  def menu
  end

  def get_started
  end

  def faq
  end

private

  def users_params
    params.require(:user).permit(:first_name, :email)
  end
end
