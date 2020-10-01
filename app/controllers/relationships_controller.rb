class RelationshipsController < ApplicationController
  
  
  def create
    @port = Port.find(params[:port_id])
    current_user.follow(@port)
      respond_to do |format|
      format.html {redirect_to ports_url, flash: {success: 'Followed!'} }
      format.js  end
  end
  
  def destroy
    @port = Port.find(params[:port_id])
    current_user.unfollow(@port) 
      respond_to do |format|
      format.html {redirect_to ports_url, flash: {success: 'Followed!'} }
      format.js  end
  end
end
