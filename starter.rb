get '/countries(.:format)?' do
  Country.by_key.all    # sort/order by key
end

get '/cities(.:format)?' do
  City.by_key.all       # sort/order by key
end

get '/tag/:slug(.:format)?' do   # e.g. /tag/north_america.csv
  Tag.find_by!( slug: params['slug'] ).countries
end
