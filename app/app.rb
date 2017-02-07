ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class MakersBnB < Sinatra::Base
  # use Rack::MethodOverride
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    @ads = Advert.all
    erb :index
  end

  post '/' do
    advert = Advert.create( userid: params[:userid],
    description: params[:description],
    datefrom: params[:datefrom],
    dateto: params[:dateto])
    advert.save
    p advert
    redirect '/'
  end

  get '/new-ad' do
    erb :new_ad
  end

  run! if app_file == $0
end
