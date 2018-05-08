json.extract! product, :id, :nome, :p_active, :created_at, :updated_at
json.url product_url(product, format: :json)
