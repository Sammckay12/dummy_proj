require 'spec_helper'

feature 'Listings' do
  scenario 'can add new listing' do
    makeListing
    expect(page.status_code).to eq 200
    # within 'ul#listings' do
      expect(current_path).to eq('/')
      expect(page).to have_content(23)
    # end
  end
  scenario 'user can view requests on their listings' do
    visit '/user-view'
    expect(page).to have_content('Here are your listings and requests')
  end
end
