json.extract! client, :id, :code, :name, :address, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
