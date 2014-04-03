json.array!(@parks) do |park|
  json.extract! park, 
  json.url park_url(park, format: :json)
end