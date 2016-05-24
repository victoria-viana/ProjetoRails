json.array!(@cards) do |card|
  json.extract! card, :id, :exercise, :frequency, :howtodo
  json.url card_url(card, format: :json)
end
