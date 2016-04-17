json.array!(@listings) do |listing|
  json.extract! listing, :id 
  json.value listing.name
  json.tokens listing.name_tokens
end
