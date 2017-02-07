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
    expect(page).to have_content('Goodbye!')
    expect(page).not_to have_content("Hello John Johnson!")
  end

  # let!(:user) do
  #   User.create(email: 'user@example.com',
  #               name: 'John Johnson'
  #               password: 'secret1234')
  # end



  # scenario 'with correct credentials' do
  #   sign_in(email: user.email, password: user.password)
  #   expect(page).to have_content "Hello #{user.name}!"
  # end
  #
  # def sign_in(email:, password:)
  #   visit '/sessions/new'
  #   fill_in :email, with: email
  #   fill_in :password, with: password
  #   click_button 'Sign in'
  # end

end
