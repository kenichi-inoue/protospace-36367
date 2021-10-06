class UsersController < ApplicationController
  def show
    # @name = current_user.name
    # @prototype = current_user.prototype
    @user = User.find(params[:id])
    # @comment = Comment.new
    # @comments = @prototype.comments.includes(:user)
    # @nickname = current_user.nickname
    # @tweets = current_user.tweets
    @prototype = @user.prototypes
    # @tweets = current_user.tweets
  end
end
