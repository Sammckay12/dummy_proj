def makeListing
  visit '/new-listing'
  fill_in :description, with: 'Hello Feature'
  fill_in :price, with: '23'
  fill_in :datefrom, with: '2017-03-04'
  fill_in :dateto, with: '2017-03-07'
  click_button 'Add'
end
