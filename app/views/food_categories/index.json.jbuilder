json.array!(@food_categories) do |food_category|
  json.extract! food_category, :id
  json.url food_category_url(food_category, format: :json)
end
