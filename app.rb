require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/parc_info') do
  service = params.fetch('user_choice')
  height = params.fetch('height').to_i
  width = params.fetch('width').to_i
  length = params.fetch('length').to_i
  miles = params.fetch('distance').to_i
  @parcel_cost = Parcel.new(length, width, height, miles, service)
  @parcel_cost = @parcel_cost.cost_to_ship()
  erb(:output)
end
