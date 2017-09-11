require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')
require('pry')


get('/') do
  erb(:input)
end

get('/output') do
  side1 = params["side1"].to_i
  side2 = params["side2"].to_i
  side3 = params["side3"].to_i
  weight = params["weight"].to_i
  time = params["time"].to_i

  user_parcel = Parcel.new(side1, side2, side3, weight)
  @cost = user_parcel.ship_cost(time)
  erb(:output)
end
