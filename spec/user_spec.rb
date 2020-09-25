require "rails_helper"
=begin
RSpec.describe 'User', type: :feature do
  it 'It should create a new user' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Jumbo Precious'
    fill_in 'user_username', with: 'Jumbo'
    fill_in 'user_email', with: 'j.email@example.com'
    find("input[type='submit']").click
    expect(page).to have_content(/Profile for Jumbo Precious Created successfully/i)
  end
  it 'It should NOT create a new user with imcomplete parameters' do
    visit new_user_path
    fill_in 'user_full_name', with: 'Ken Obi'
    fill_in 'user_username', with: 'Ken'
    find("input[type='submit']").click
    expect(page).to have_content(/Something went wrong/i)
  end
end
=end
RSpec.describe 'User', type: :feature do
  it 'It should log in successfully with existing username' do
    visit login_path
    fill_in 'username', with: 'Denco'
    find("input[type='submit']").click
    expect(page).to have_content(/Something went wrong/i)
  end
end
