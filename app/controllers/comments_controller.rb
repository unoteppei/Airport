class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      flash[:notice] = 'コメントを投稿しました'
      redirect_to post_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
