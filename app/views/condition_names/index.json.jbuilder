json.array!(@condition_names) do |condition_name|
  json.extract! condition_name, :id, :condition_name, :nIndex
  json.url condition_name_url(condition_name, format: :json)
end
