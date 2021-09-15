class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space, dependent: :destroy
end
