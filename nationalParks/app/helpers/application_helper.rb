module ApplicationHelper
	def avatar_url(park)
    name_id = park.parkname.gsub(/\s+/, "").downcase
    "http://intangiblefire.files.wordpress.com/2014/05/#{name_id}5.jpg?w=1100"
  end
end
