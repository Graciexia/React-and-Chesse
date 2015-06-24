json.array!(@cheeses) do |cheese|
  json.extract! cheese, :id, :cheese_name, :category
  json.url cheese_url(cheese, format: :json)
end
