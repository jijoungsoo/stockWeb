json.array!(@screen_infos) do |screen_info|
  json.extract! screen_info, :id, :screen_number, :tr_code, :rq_name
  json.url screen_info_url(screen_info, format: :json)
end
