# Please comment out the _header.html.erb partial in
# views/layout/application.html.erb first before
# running the RSpec test series to avoid ambiguity

require 'rails_helper'
RSpec.describe 'User', type: :feature do
  it 'It should create a new user' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Mark Precious'
    fill_in 'user_username', with: 'Mak'
    fill_in 'user_email', with: 'm.email@example.com'
    find("input[type='submit']").click
    expect(page).to have_content(/Profile for Mark Precious Created successfully. Login to access all features/i)
  end
  it 'It should NOT create a new user with imcomplete parameters' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Ken Obi'
    fill_in 'user_username', with: 'Ken'
    find("input[type='submit']").click
    expect(page).to have_content(/Something went wrong/i)
  end
  it 'It should log in successfully with existing username' do
    User.create(full_name: 'Mark Precious', username: 'Mak', email: 'm.email@example.com')
    visit login_path
    fill_in 'login_username', with: 'Mak'
    find("input[type='submit']").click
    expect(page).to have_content(/You have logged in successfully/i)
  end
  it 'It should NOT log in with parameter other than username' do
    User.create(full_name: 'Mark Precious', username: 'Mak', email: 'm.email@example.com')
    visit login_path
    fill_in 'login_username', with: 'Mark Precious'
    find("input[type='submit']").click
    expect(page).to have_content(/Login failed. Something went wrong/i)
  end
end
