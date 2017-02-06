ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative './models/user.rb'

class Makersbnb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret whatever'


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
