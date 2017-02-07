def makeAdvert
  visit '/new-ad'
  fill_in :userid, with: '23'
  fill_in :description, with: 'Advert 23'
  fill_in :datefrom, with: Date.new(2017,3,1)
  fill_in :dateto, with: Date.new(2017,3,5)
  click_button 'Add'
end
