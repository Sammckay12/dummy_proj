
class Request
  include DataMapper::Resource

  has 1, :user, through: Resource
  has 1, :listing, through: Resource

  property :id, Serial
  property :userid, Integer, required: true
  property :listingid, Integer, required: true

end
