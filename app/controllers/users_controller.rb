class UsersController < ApplicationController
  def index
    @user = User.find(current_user[:id])
    @posts = @user.posts
    # @nickname = @user.nickname
    # @posts = @user.post.page(params[:page]).per(5)
  end
end
