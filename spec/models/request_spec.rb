describe Request do

  let!(:request) do
    Request.create(
      userid: 2,
      listingid: 2
    )
  end

  it 'adds userid' do
    expect(request.userid).to eq 2
  end

  it 'adds listing id' do
    expect(request.listingid).to eq 2
  end

end
