require 'date'

class Listing
  include DataMapper::Resource

  property :id, Serial
  property :description, String, required: true
  property :price, Integer, required: true

  has n, :requests, :through => Resource
  belongs_to :user

end
