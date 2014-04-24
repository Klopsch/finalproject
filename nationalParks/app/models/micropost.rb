class Micropost < ActiveRecord::Base
  belongs_to :park
  validates_presence_of :content
  validates_presence_of :user
  validates_presence_of :park
  #validates :park_id, presence: true
end
