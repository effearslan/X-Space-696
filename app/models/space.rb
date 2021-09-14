class Space < ApplicationRecord
  belongs_to :user #creator
  has_one :booking
end
