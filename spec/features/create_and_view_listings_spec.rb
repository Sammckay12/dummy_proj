require 'spec_helper'

feature 'Listings' do
  scenario 'can add new listing' do
    make_listing
    expect(page.status_code).to eq 200
    expect(page).to have_content('£23.00')
  end
end

feature 'Request' do
  scenario 'can make request' do
    sign_up_owner
    log_in_owner
    make_listing
    log_out
    sign_up_customer
    log_in_customer
    page.all('input')[1].click
    expect(page).to have_content('Pending')
  end
end
