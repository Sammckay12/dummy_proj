
class Request
  include DataMapper::Resource

  property :id, Serial
  property :user_id, Integer

  belongs_to :listing
  belongs_to :user

end
