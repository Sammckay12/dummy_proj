ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'data_mapper_setup'

class MakersBnB < Sinatra::Base
  register Sinatra::Flash
  use Rack::MethodOverride

  enable :sessions
  set :session_secret, 'super secret'
  set :sessions, user_id: nil

  get '/' do
    @listings = Listing.all
    erb :index
  end

  post '/' do
    @listing = Listing.create(description: params[:description],
                              price: params[:price],
                              datefrom: params[:datefrom],
                              dateto: params[:dateto],
                              user_id: session[:user_id])
    redirect '/'
  end

  get '/user-view' do
     @listings = Listing.all(:user_id => session[:user_id])
     p @listings
     @requests = Request.all(listing_id: 1)
     p @requests
    # p @listings
    erb :user_view
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

  post '/request-confirmation' do
  request =  Request.create( user_id: session[:user_id],
                    listing_id: params[:listingid]
                    )
    p request
    p request.user
    redirect '/pending'
  end

  get '/pending' do
    erb :pending
  end

  get '/inbox' do
    erb :inbox
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
    def current_path
      @current_path = request.path_info
    end
  end

  run! if app_file == $0
end
