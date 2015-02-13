json.array!(@tgifs) do |tgif|
  json.extract! tgif, :id, :name, :email
  json.url tgif_url(tgif, format: :json)
end
