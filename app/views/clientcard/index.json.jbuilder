json.array!(@clientcards) do |clientcard|
  json.extract! clientcard,:id, :name, :exercise, :howtodo, :frequency, :coach
  json.url clientcard_url(clientcard, format: :json)
end
