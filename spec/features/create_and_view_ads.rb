require 'spec_helper'

feature 'Adverts' do

  scenario 'advert is on homepage' do
    makeAdvert
    expect(page.status_code).to eq 200
    within 'ul#ads' do
      expect(page).to have_content('Advert 23')
    end
  end

  scenario 'can add new advert' do
    makeAdvert
    within 'ul#ads' do
      expect(page).to have_content('Advert 23')
    end
  end
end
