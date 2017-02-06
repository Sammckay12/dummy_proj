class Advert

  include DataMapper::Resource

  # has n, :tags, through: Resource

  property :id, Serial
  property :propertyid, Integer
  property :description, String
  property :datefrom, Date
  property :dateto, Date

  def datefrom
    d = @datefrom.day
    m = @datefrom.mon
    y = @datefrom.year
    "#{d}-#{m}-#{y}"
  end

  def dateto
    d = @dateto.day
    m = @dateto.mon
    y = @dateto.year
    "#{d}-#{m}-#{y}"
  end

end
