class Micropost < ActiveRecord::Base
  belongs_to :park
  #validates :park_id, presence: true
end
