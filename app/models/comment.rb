class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :body, :post_id, presence: true

  private

  def send_notification
    NotificationMailer.comment_notification(post.user, post).deliver_now

  end

end
