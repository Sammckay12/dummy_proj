require 'spec_helper'

feature 'Listings' do
  scenario 'can add new listing' do
    makeListing
    expect(page.status_code).to eq 200
    within 'ul#listings' do
      expect(page).to have_content('£23.00')
    end
  end
end
