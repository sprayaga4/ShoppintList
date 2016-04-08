json.array!(@listtodos) do |listtodo|
  json.extract! listtodo, :id, :todo, :due
  json.url listtodo_url(listtodo, format: :json)
end
