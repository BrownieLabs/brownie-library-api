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

require 'rails_helper'

RSpec.describe Book, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
