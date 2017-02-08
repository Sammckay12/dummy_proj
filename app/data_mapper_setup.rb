require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/listing'

env = ENV['RACK_ENV'] || 'development'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/makersbnb_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!
