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