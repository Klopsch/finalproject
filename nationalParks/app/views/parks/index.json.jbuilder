json.array!(@parks) do |park|
  json.extract! park, :parkname, :location, :info
  json.url park_url(park, format: :json)
end