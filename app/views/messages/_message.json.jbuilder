json.extract! message, :id, :body, :subject, :address, :created_at, :updated_at
json.url message_url(message, format: :json)
