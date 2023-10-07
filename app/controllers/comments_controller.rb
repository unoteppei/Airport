class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = @post.id
    @comment.save
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
