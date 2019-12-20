json.extract! attach_file, :id, :title, :image, :created_at, :updated_at
json.url attach_file_url(attach_file, format: :json)
