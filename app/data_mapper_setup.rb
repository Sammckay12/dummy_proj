require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/listing'
require_relative 'models/user'
require_relative 'models/request'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/makersbnb_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
# DataMapper.auto_migrate!
# DataMapper::Logger.new($stdout, :debug)
