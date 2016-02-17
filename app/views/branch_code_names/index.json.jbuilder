json.array!(@branch_code_names) do |branch_code_name|
  json.extract! branch_code_name, :id, :branch_code, :branch_name
  json.url branch_code_name_url(branch_code_name, format: :json)
end
