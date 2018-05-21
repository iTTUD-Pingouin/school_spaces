class UsersController < ApplicationController
  def reservations
    @user = User.find(params[:id])
  end
end
