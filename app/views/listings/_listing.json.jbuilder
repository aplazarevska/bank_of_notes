json.extract! listing, :id, :title, :denomination, :condition, :description, :price, :buyer_id, :seller_id, :profile_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
