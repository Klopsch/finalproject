class Micropost < ActiveRecord::Base
	belongs_to :parks
	belongs_to :users
	def add_tag
	end
end
