feature 'user sign_up' do

  scenario "as a new user I can sign up" do
    visit('/sign_up')
    expect(page.status_code).to eq(200)
    expect(page).to have_content("Enter your sign up details here:")
  end
end
