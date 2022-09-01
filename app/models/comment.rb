class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post

  after_save :comments_posts_counter
  def comments_posts_counter
    post.increment!(:comments_counter)
  end
end
