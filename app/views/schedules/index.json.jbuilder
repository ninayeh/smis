json.array!(@missions) do |mission|
  json.title mission.title
  json.start mission.start_date.to_time.iso8601
  json.end mission.end_date.to_time.iso8601
end
