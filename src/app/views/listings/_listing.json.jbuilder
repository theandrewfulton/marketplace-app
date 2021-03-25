json.extract! listing, :id, :title, :location, :description, :price, :unit, :quantity_total, :quantity_available, :user, :rating, :reviews, :sold, :created_at, :updated_at
json.url listing_url(listing, format: :json)
