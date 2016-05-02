json.array!(@clients) do |client|
  json.extract! client, :id, :name, :age, :gender, :adress
  json.url client_url(client, format: :json)
end
