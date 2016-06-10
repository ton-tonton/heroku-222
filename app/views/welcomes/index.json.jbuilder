json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :quote
  json.url welcome_url(welcome, format: :json)
end
