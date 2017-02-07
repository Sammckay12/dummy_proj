ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'
require_relative './models/user'
require_relative 'data_mapper_setup'

class Makersbnb < Sinatra::Base
  register Sinatra::Flash
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

  get '/sign_up' do
    erb :'sign_up'
  end

  post '/sign_up' do
    email = params[:email]
    name = params[:name]
    password = params[:password]
    @user = User.create(email: email,name: name,password: password)
    session[:user_id] = @user.id
    redirect '/'
  end

  delete '/sessions' do
    session[:user_id] = nil
    redirect to '/'
  end

  get '/sessions' do
    erb :sessions
  end

  post '/sessions' do
    @user = User.authenticate(params[:email],params[:password])
    if @user
      session[:user_id] = @user.id
      redirect to '/'
    else
      flash.now[:errors] = "password/email combination is incorrect"
      erb :sessions
    end
  end

  get '/' do
    erb :index
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  run! if app_file == $0
end
