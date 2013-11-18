json.array!(@wines) do |wine|
  json.extract! wine, :name, :description, :photo_url, :rating
  json.url wine_url(wine, format: :json)
end
