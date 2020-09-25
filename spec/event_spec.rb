require "rails_helper"

RSpec.describe 'Event', type: :feature do
=begin
  before(:all) do
    visit new_user_path
    fill_in 'user_full_name', with: 'Mark Ibe'
    fill_in 'user_username', with: 'Ibe'
    fill_in 'user_email', with: 'm.email@example.com'
    find("input[type='submit']").click
  end
=end
  it 'It should create a new Event' do
    visit new_event_path
    fill_in 'event_title', with: "Test event A"
    fill_in 'event_description', with: 'Testing event capybara'
    fill_in 'event_event_date', with: '2021-06-02'
    find("input[type='submit']").click
    expect(page).to have_content(/Event created successfully/i)
  end
end
