feature 'user sign_up' do

  scenario "as a new user I can sign up" do
    visit('/sign_up')
    expect(page.status_code).to eq(200)
    expect(page).to have_content("Enter your sign up details here:")
  end

  scenario "as a new user I am greeted on the homepage" do
    visit('/sign_up')
    fill_in :email, with:("hello@example.com")
    fill_in :name, with:("John Johnson")
    fill_in :password, with:("wordpass")
    click_button("submit")
    expect(current_path).to eq('/')
    expect(page).to have_content("Hello John Johnson!")
  end

end
