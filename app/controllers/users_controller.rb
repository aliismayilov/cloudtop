class UsersController < ApplicationController
  def index
    return redirect_to username_path(username: params[:username]) if params[:username]
  end

  def show
  end
end
