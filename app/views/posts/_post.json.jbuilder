json.extract! post, :id, :title, :body, :writer, :like, :targetLanguage, :created_at, :updated_at
json.url post_url(post, format: :json)
