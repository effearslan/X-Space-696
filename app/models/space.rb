class Space < ApplicationRecord
  belongs_to :user #creator
  has_one :booking
  has_many_attached :photos
  validates :depth, :height, :width, :price, :destination, :location, :travel_date, :name, presence: true
  validates :depth, :height, :width, numericality: { greater_than: 0, less_than_or_equal_to: 100 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :destination, exclusion: { in: :location }
  # validates :travel_date, not_in_past: true
end
