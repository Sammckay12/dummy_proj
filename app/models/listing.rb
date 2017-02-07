require 'date'

class Listing
  include DataMapper::Resource

  property :id, Serial
  property :description, String, required: true
  property :price, Integer, required: true
  property :datefrom, Date, required: true

end

#
#
# class Advert
#
#   include DataMapper::Resource
#
#   # has n, :tags, through: Resource
#
#   property :id, Serial
#   property :userid, Integer
#   property :description, String
#   property :datefrom, Date
#   property :dateto, Date
#
#   def datefrom
#     d = @datefrom.day
#     m = @datefrom.mon
#     y = @datefrom.year
#     "#{d}-#{m}-#{y}"
#   end
#
#   def dateto
#     d = @dateto.day
#     m = @dateto.mon
#     y = @dateto.year
#     "#{d}-#{m}-#{y}"
#   end
#
# end
