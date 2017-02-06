describe Advert do

  let!(:advert) do
    Advert.create( propertyid: 33,
      description: 'Advert 33',
      datefrom: Date.new(2017,3,1),
      dateto: Date.new(2017,3,5))
  end

  it 'adds property ID' do
    expect(advert.propertyid).to eq 33
  end

  it 'adds description' do
    expect(advert.description).to eq 'Advert 33'
  end

  it 'adds from date' do
    expect(advert.datefrom).to eq '1-3-2017'
  end

  it 'adds to date' do
    expect(advert.dateto).to eq '5-3-2017'
  end

end
