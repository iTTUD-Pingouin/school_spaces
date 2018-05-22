class UsersController < ApplicationController
  def reservations
    @user = current_user
  end
end
