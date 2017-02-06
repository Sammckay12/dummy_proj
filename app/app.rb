ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'

class Makersbnb < Sinatra::Base

  get '/sign_up' do

  erb :'sign_up'
  end

run! if app_file == $0
end
