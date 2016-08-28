class PostMailer < ApplicationMailer

  def post_created(user)
    @user = user
    mail(to: @user.email,
        from: 'service@gmail.com',
        subject: "Post created",
        body: 'my first post'
    )
  end
end
