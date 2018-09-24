json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :unit_price, :unit_price, :image
  json.url product_url(product, format: :json)
end
