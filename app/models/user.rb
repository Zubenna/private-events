class User < ApplicationRecord
  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances, source: :attended_event
  has_many :created_events, foreign_key: :creator_id, class_name: :Event

  # scope :upcoming_events, -> { where("event_date > ?", Time.now) }
  # scope :previous_events, -> { where("event_date < ?", Time.now) }
   def upcoming_events
     # puts "UPCOMING EVENTS"
      attended_events.select { |t| t.date.to_i > Time.now.to_i }
   end

   def previous_events
      attended_events.select { |t| t.date.to_i < Time.now.to_i }
   end

end
