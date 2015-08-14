json.array!(@fast_foods) do |fast_food|
  json.extract! fast_food, :id
  json.url fast_food_url(fast_food, format: :json)
end
