class NotificationMailer < ApplicationMailer
  def comment_notification(user, post)
    @user = user
    @post = post

    mail(to: user.email, subject: 'Новый ответ')
  end

end
