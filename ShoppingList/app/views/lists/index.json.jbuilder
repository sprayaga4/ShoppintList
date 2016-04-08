json.array!(@lists) do |list|
  json.extract! list, :id, :Name
  json.url list_url(list, format: :json)
end
