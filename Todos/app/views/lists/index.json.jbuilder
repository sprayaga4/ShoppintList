json.array!(@lists) do |list|
  json.extract! list, :id, :activity, :alarm
  json.url list_url(list, format: :json)
end
