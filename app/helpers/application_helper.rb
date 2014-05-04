module ApplicationHelper
  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end
	def avatar_url(park)
    name_id = park.parkname.gsub(/\s+/, "").downcase
    "http://intangiblefire.files.wordpress.com/2014/05/#{name_id}5.jpg?w=1100"
  end
end
