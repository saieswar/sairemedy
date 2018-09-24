json.array!(@nakshatras) do |nakshatra|
  json.extract! nakshatra, :id, :name
  json.url nakshatra_url(nakshatra, format: :json)
end
