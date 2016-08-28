class PostMailer < ApplicationMailer

  def post_created(post)
    @user = post.user
    @post = post
    mail to: @user.email, subject: "Post created successfully"
  end

  def post_commented(comment)
    @post = comment.post
    @comment = comment
    mail to: @post.user.email, subject: 'Hey, someone commented on your post'
  end
end
