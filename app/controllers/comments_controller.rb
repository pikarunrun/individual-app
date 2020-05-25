class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @post = @comment.post
    @comment.save
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
