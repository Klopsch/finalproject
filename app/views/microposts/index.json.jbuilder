json.array!(@microposts) do |micropost|
  json.extract! micropost, :content, :park_id, :user
  json.url micropost_url(micropost, format: :json)
end