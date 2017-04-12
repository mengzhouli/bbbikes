class Bike < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :brand, presence: true
  validates :model, presence: true
  validates :bike_kind, presence: true
  validates :height_range, presence: true
  validates :location, presence: true
  has_attachments :photos, maximum: 4

  brands = ["Colnago", "Parlee", "Giant", "Jamis", "Trek", "Brompton", "Tern" ,"Canondale", "Liv", "Fly", "Marin", "Faraday", "Apollo", "Brooklyn Bicycle Co."]
  sorted_brands = brands.sort
end

