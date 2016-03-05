json.array!(@domains) do |domain|
  json.extract! domain, :id, :name, :description, :english_keyword
  json.url domain_url(domain, format: :json)
end
