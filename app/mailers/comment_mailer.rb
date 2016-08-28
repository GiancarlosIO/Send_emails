class CommentMailer < ApplicationMailer

  def comment_created(comment)
    @comment = comment
    @post = comment.post
    mail to: @comment.email, subject: 'Comment created'
  end
  
end
