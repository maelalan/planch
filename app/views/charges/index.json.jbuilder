json.array!(@charges) do |charge|
  json.extract! charge, :id, :user_id, :category_id, :week_id
  json.url charge_url(charge, format: :json)
end
