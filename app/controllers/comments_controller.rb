class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
      PostMailer.post_commented(@comment).deliver_now
      CommentMailer.comment_created(@comment).deliver_now
    else
      redirect_to :back, alert: 'can\'t create a post'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :content)
  end

end
