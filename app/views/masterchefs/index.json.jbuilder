json.array!(@masterchefs) do |masterchef|
  json.extract! masterchef, :voter, :votefor
  json.url masterchef_url(masterchef, format: :json)
end