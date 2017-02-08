describe Listing do

  let!(:listing) do
    Listing.create(
      description: 'Hello Unit',
      price: 99,
      datefrom: Date.new(2017,3,1),
      dateto: Date.new(2017,3,5)
    )
  end

  it 'adds description' do
    expect(listing.description).to eq 'Hello Unit'
  end

  it 'adds price' do
    expect(listing.price).to eq 99
  end

end
  #     Advert.create( userid: 33,
  #       description: 'Advert 33',
  #       datefrom: Date.new(2017,3,1),
  #       dateto: Date.new(2017,3,5))
  #   end
  #



# describe Advert do
#
#   let!(:advert) do
#     Advert.create( userid: 33,
#       description: 'Advert 33',
#       datefrom: Date.new(2017,3,1),
#       dateto: Date.new(2017,3,5))
#   end
#
#   it 'adds user ID' do
#     expect(advert.userid).to eq 33
#   end
#
#   it 'adds description' do
#     expect(advert.description).to eq 'Advert 33'
#   end
#
#   it 'adds from date' do
#     expect(advert.datefrom).to eq '1-3-2017'
#   end
#
#   it 'adds to date' do
#     expect(advert.dateto).to eq '5-3-2017'
#   end
#
# end
