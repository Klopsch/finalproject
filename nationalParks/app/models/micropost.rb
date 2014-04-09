class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :park
  validates :content, length: { maximum: 140 }
end
