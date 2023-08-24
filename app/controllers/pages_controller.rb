class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @requests = Booking.joins(:instrument).where(instruments: { user: current_user })
    @instruments = current_user.instruments
  end
end
