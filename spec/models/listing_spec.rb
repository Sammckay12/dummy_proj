describe Listing do

  let!(:listing) do
    Listing.create(
      description: 'Hello Unit',
      price: 99,
    )
  end

  it 'adds description' do
    expect(listing.description).to eq 'Hello Unit'
  end

  it 'adds price' do
    expect(listing.price).to eq 99
  end

end
