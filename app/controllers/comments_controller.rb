class CommentsController < ApplicationController

  def create
    # Comment.create(comment_params)
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype) 
      # redirect_to prototype_path(@comment) 
      # redirect_to prototype_path
    else
      # <%= render "messages/side_bar" %>
      # render :show  
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"  
      # render template: "prototypes/show"  
      # render :prototypes/show
      # render prototypes/show:
      # render "/prototypes /#{comment.prototype_id}"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
