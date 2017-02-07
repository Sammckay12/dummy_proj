ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class MakersBnB < Sinatra::Base
  use Rack::MethodOverride
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    @listings = Listing.all
    erb :index
  end

  post '/' do
    listing = Listing.create(description: params[:description],
                              price: params[:price],
                              datefrom: params[:datefrom])
    p listing
    redirect '/'
  end

  get '/new-listing' do
    erb :new_listing
  end

  run! if app_file == $0
end
