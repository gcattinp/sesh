class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = @instrument.bookings.build(booking_params)
    @booking.user = current_user
    @booking.status = 'pending'
    if @booking.save
      redirect_to instrument_path(@instrument), notice: 'Booking created!'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.update(status: 'approved')
    redirect_to dashboard_path, notice: 'Booking approved'
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(status: 'declined')
    redirect_to dashboard_path, notice: 'Booking declined.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
