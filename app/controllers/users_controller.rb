class UsersController < ApplicationController

  def show
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      items = user.items
    else
      user = User.find_by(id: params[:id])
    end
    render json: user, include: :items
  end

end
