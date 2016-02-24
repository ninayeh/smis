json.array!(@missions) do |mission|
  json.title mission.title
  json.start mission.start.to_time.iso8601
  json.end mission.end.to_time.iso8601
end
