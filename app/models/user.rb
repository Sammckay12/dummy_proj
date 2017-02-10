require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'
require 'dm-validations'
require 'bcrypt'

class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :name, String
  
  has n, :listings, :through => Resource, :required => false
  has n, :requests, :through => :listings

end
