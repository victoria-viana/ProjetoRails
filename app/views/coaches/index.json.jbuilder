json.array!(@coaches) do |coach|
  json.extract! client, :id, :name, :email, :cpf
  json.url coach_url(coach, format: :json)
end
