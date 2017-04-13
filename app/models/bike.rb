class Bike < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_attachments :photos, maximum: 4
  geocoded_by :location

  validates :brand, presence: true
  validates :model, presence: true
  validates :bike_kind, presence: true
  validates :height_range, presence: true
  validates :location, presence: true
  validates :photos, presence: true
  after_validation :geocode, if: :location_changed?



end
