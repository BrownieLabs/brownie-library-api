# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  ISBN       :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
end
