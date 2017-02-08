def sign_up
  visit('/')
  click_button ('Sign up')
  fill_in :email, with:("hello@example.com")
  fill_in :name, with:("John Johnson")
  fill_in :password, with:("wordpass")
  click_button('submit')
end

def makeListing
  visit('/')
  click_button ('Sign up')
  fill_in :email, with:("hello@example.com")
  fill_in :name, with:("John Johnson")
  fill_in :password, with:("wordpass")
  click_button('submit')
  visit '/new-listing'
  fill_in :description, with: 'Hello Feature'
  fill_in :price, with: '23'
  fill_in :datefrom, with: '2017-03-04'
  fill_in :dateto, with: '2017-03-07'
  click_button 'Add'
end
