# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_comments_on_book_id  (book_id)
#  index_comments_on_user_id  (user_id)
#

class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user
end
