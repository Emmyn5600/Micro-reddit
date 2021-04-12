json.extract! post, :id, :title, :Content, :created_at, :updated_at
json.url post_url(post, format: :json)
