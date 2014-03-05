class UsersController < ApplicationController
  def new
    @user = User.find(pararms[:id])
  end
end
