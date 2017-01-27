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

FactoryGirl.define do
  factory :book do
    title "MyString"
ISBN "MyString"
year 1
  end

end
