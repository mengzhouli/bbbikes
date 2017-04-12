class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_one :review
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, presence: true
  # validates :fee, presence: true
  # validates :user, uniqueness: { scope: [:bike, :start_time, :end_time] }
  # do validation for calendar conflict as a nice to have

end
