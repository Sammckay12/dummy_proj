require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'
require 'bcrypt'

class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :name, String
  property :password_digest,Text

 def password=(password)
   self.password_digest = BCrypt::Password.create(password)
 end

end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
