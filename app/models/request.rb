
class Request
  include DataMapper::Resource

  property :id, Serial

  belongs_to :listing
  belongs_to :user

end
