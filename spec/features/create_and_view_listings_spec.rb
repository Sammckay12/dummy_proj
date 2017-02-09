require 'spec_helper'

feature 'Listings' do
  scenario 'can add new listing' do
    make_listing
    expect(page.status_code).to eq 200
<<<<<<< HEAD
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

  scenario 'confirm request' do
    sign_up_owner
    log_in_owner
    make_listing
    log_out
    sign_up_customer
    log_in_customer
    click_button('Make Offer')
    log_out
    log_in_owner
    click_button('Inbox')
    click_button('Confirm Booking')
    expect(page).to have_content('Booking Confirmed!')
=======
    # within 'ul#listings' do
      expect(current_path).to eq('/')
      expect(page).to have_content(23)
    # end
>>>>>>> master
  end
  scenario 'user can view requests on their listings' do
    visit '/user-view'
    expect(page).to have_content('Here are your listings and requests')
  end
end
