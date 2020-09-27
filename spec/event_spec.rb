# Please comment out the _header.html.erb partial in 
# views/layout/application.html.erb first before
# running the RSpec test series to avoid ambiguity

require 'rails_helper'
RSpec.describe 'Event', type: :feature do
  it 'It should create a new Event' do
    User.create(full_name: 'Mark Precious', username: 'Mak', email: 'm.email@example.com')
    visit login_path
    fill_in 'login_username', with: 'Mak'
    find("input[type='submit']").click
    visit new_event_path
    fill_in 'event_title', with: 'Test event A'
    fill_in 'event_description', with: 'Testing event capybara'
    find("input[type='submit']").click
    expect(page).to have_content(/Event created successfully/i)
  end
  it 'It should display All Events' do
    User.create(full_name: 'Mark Precious', username: 'Mak', email: 'm.email@example.com')
    visit login_path
    fill_in 'login_username', with: 'Mak'
    find("input[type='submit']").click
    visit events_path
    expect(page).to have_content(/List of All Events/i)
  end
end
