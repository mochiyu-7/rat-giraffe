json.extract! post, :id, :name, :rent, :address, :age, :remarks, :created_at, :updated_at
json.url post_url(post, format: :json)
