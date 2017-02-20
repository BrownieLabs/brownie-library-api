# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  approved   :boolean
#  book_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_requests_on_book_id  (book_id)
#  index_requests_on_user_id  (user_id)
#

class Request < ApplicationRecord
  belongs_to :book
  belongs_to :user
end
