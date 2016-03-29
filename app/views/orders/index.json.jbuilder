json.array!(@orders) do |order|
  json.extract! order, :id, :user, :product
  json.url order_url(order, format: :json)
end
