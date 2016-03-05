json.array!(@opw00003s) do |opw00003|
  json.extract! opw00003, :id, :search_date, :account_number, :estimation_deposition_property
  json.url opw00003_url(opw00003, format: :json)
end
