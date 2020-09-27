require 'rails_helper'
RSpec.describe User, type: :model do
  user = User.new
  it 'full_name should be present' do
    user.full_name = nil
    expect(user).to_not be_valid
  end
  it 'username should be present' do
    user.username = nil
    expect(user).to_not be_valid
  end
  it 'email should be present' do
    user.email = nil
    expect(user).to_not be_valid
  end
  it 'All parameters should be present' do
    user.full_name = 'Daniel Eze'
    user.username = 'Denco'
    user.email = 'd.email@example.com'
    expect(user).to be_valid
  end
end
RSpec.describe User, type: :model do
  event = Event.new
  user = User.create(full_name: 'Daniel Eze', username: 'Denco', email: 'd.email@example.com')
  it 'title should be present' do
    event.title = nil
    expect(event).to_not be_valid
  end
  it 'description should be present' do
    event.description = nil
    expect(event).to_not be_valid
  end
  it 'event_date should be present' do
    event.event_date = nil
    expect(event).to_not be_valid
  end
  it 'All parameters must have values' do
    event.title = 'Test title'
    event.description = 'Title for testing purpose'
    event.event_date = '2020-10-22'
    event.creator_id = user.id
    expect(event).to be_valid
  end
end
RSpec.describe Attendance, type: :model do
  user = User.create(full_name: 'Daniel Eze', username: 'Denco', email: 'd.email@example.com')
  Event.create(title: 'Test event', description: 'Test title', event_date: '2020-10-22', creator_id: user.id)
  u = User.first
  e = Event.first
  test_array = u.attended_events << e
  it 'it should be equal to event title' do
    test_array.each do |attendee|
      expect(attendee.title).to eq('Test event')
    end
  end
end
