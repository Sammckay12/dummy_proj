describe Request do

  let!(:request) do
    Request.create(
      user_id: 2,
      listing_id: 4
    )
  end

  it 'adds userid' do
    expect(request.user_id).to eq 2
  end

  it 'adds listing id' do
    expect(request.listing_id).to eq 4
  end

end
