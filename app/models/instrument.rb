class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :images
end
