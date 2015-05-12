json.array!(@trailers) do |trailer|
  json.extract! trailer, :id, :title, :url, :length
  json.url trailer_url(trailer, format: :json)
end
