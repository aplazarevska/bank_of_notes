json.extract! image, :id, :title, :description, :image_path, :byte_size, :listing_id, :created_at, :updated_at
json.url image_url(image, format: :json)
