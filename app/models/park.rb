class Park < ActiveRecord::Base
  validates_presence_of :parkname
  validates_presence_of :location
  validates_presence_of :info
  has_many :microposts
end
