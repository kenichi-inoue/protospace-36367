class UsersController < ApplicationController
  def show
    @name = current_user.name
    # @prototype = current_user.prototype
    # @user = User.find(params[:id])
    # @comment = Comment.new
    # @comments = @prototype.comments.includes(:user)
  end
end
