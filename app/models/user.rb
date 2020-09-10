class User < ApplicationRecord
  has_many :events
  # has_many :events, :through => :attendees
  has_many :attendances
  has_many :attended_events, through: :attendances

  # has_secure_password
end
