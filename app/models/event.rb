class Event < ApplicationRecord
	has_many :attendances, foreign_key: :attended_event_id
	has_many :attendees, through: :attendances, source: :attendee
	belongs_to :creator, class_name: :User, foreign_key: :creator_id

	scope :all_upcoming_events, -> { where("event_date > ?", Time.now) }
  scope :all_past_events, -> { where("event_date < ?", Time.now) }
end
