# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_pins_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user

  has_one_attached :image do |attachable|
    attachable.variant :medium, resize_to_limit: [300, 300]
  end  
end
