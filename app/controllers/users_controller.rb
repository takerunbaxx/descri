class UsersController < ApplicationController
  
  
  def show
  end

  def following_port
    @following_ports = current_user.followings.order(created_at: :desc)
  end
end
