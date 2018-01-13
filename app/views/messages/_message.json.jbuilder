json.extract! message, :id, :date, :title, :link, :created_at, :updated_at
json.url message_url(message, format: :json)
