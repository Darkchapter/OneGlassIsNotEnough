json.array!(@brands) do |brand|
  json.extract! brand, 
  json.url brand_url(brand, format: :json)
end