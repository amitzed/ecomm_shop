json.extract! item, :id, :brand, :product, :description, :condition, :origin, :title, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
