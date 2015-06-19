json.array!(@films) do |film|
  json.extract! film, :id, :name, :genre, :year
  json.url film_url(film, format: :json)
end
