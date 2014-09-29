json.array!(@categories) do |category|
  json.extract! category, :id, :etat
  json.url category_url(category, format: :json)
end
