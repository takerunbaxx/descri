class AdminsController < ApplicationController

def show
# @admin = Admin.find(params[:id])
end

def comment_index
  @comments = current_admin.comments.order(id: :desc)
end

end
