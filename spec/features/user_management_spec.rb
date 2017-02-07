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

feature "User Log Out" do

  scenario "as a user I can log out" do
    visit('/sign_up')
    fill_in :email, with:("hello@example.com")
    fill_in :name, with:("John Johnson")
    fill_in :password, with:("wordpass")
    click_button("submit")
    click_button("Log Out")
    expect(page).not_to have_content("Hello John Johnson!")
    expect(current_path).to eq('/')
  end
end

feature "User Log In" do
  scenario 'with correct credentials' do
  visit('/sign_up')
  fill_in :email, with:("hithere@example.com")
  fill_in :name, with:("Jack Johnson")
  fill_in :password, with:("wordypass")
  click_button("submit")
  expect(current_path).to eq('/')
  click_button("Log Out")
  visit('/sessions')
  expect(page).to have_button("Log in")
  fill_in :email, with:("hithere@example.com")
  fill_in :password, with:("wordypass")
  click_button("Log in")
  expect(page).to have_content("Hello Jack Johnson!")
end


end
