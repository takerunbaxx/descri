class CommentsController < ApplicationController


 
 def create
   port =Port.find(params[:id])
   @comment=port.comments.build(comment_params)
   @comment.user_id=current_user.id
   #@comment_port = @comment.port
   if @comment.save!
     flash[:notice]="Commented"
     redirect_to ports_path
   #@comment_port.create_notification_comment!(current_user, @comment.id)
   end
 end
  
private
    
 def comment_params
     params.permit(:content,:request,:port_id,:user_id, :admin_id, :port_rate, :spot_rate)
 end


end
