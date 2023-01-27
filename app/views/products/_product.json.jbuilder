json.extract! product, :id, :product_name, :product_type, :product_accessories, :product_description, :per_day_price, :product_available_from_date, :product_available_to_date, :created_at, :updated_at
json.url product_url(product, format: :json)
