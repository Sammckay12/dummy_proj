def make_listing
  visit '/new-listing'
  fill_in :description, with: 'Hello Feature'
  fill_in :price, with: '23'
  fill_in :datefrom, with: '2017-03-04'
  fill_in :dateto, with: '2017-03-07'
  click_button 'Add'
end

def log_out
  click_button 'Log Out'
end

def sign_up_owner
  visit('/sign_up')
  fill_in :email, with:("owner@example.com")
  fill_in :name, with:("Eric Owner")
  fill_in :password, with:("password")
  click_button("submit")
  click_button("Log Out")
end

def log_in_owner
  visit('/sessions')
  fill_in :email, with:("owner@example.com")
  fill_in :password, with:("password")
  click_button("Log in")
end

def sign_up_customer
  visit('/sign_up')
  fill_in :email, with:("customer@example.com")
  fill_in :name, with:("Mavis Customer")
  fill_in :password, with:("password")
  click_button("submit")
  click_button("Log Out")
end

def log_in_customer
visit('/sessions')
fill_in :email, with:("customer@example.com")
fill_in :password, with:("password")
click_button("Log in")
end
