json.extract! item, :id, :brand, :model, :description, :condition, :origin, :title, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
