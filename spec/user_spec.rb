require "rails_helper"

RSpec.describe 'User', type: :feature do
  it 'It should create a new user' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Mark Precious'
    fill_in 'user_username', with: 'Mak'
    fill_in 'user_email', with: 'm.email@example.com'
    find("input[type='submit']").click
    expect(page).to have_content(/Profile for Mark Precious Created successfully/i)
  end
  it 'It should NOT create a new user with imcomplete parameters' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Ken Obi'
    fill_in 'user_username', with: 'Ken'
    find("input[type='submit']").click
    expect(page).to have_content(/Something went wrong/i)
  end
=begin
  it 'It should log in successfully with existing username' do
    visit login_path
    fill_in 'user[username]', with: 'Denco'
    # find('user_username').set("Denco")
    # click_button 'submit'
    find("input[type='submit']").click
    expect(page).to have_content(/Daniel Eze have logged in successfully/i)
  end
=end
end
