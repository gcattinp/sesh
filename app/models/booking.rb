class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  enum status: { pending: 'pending', approved: 'approved', declined: 'declined' }
end
