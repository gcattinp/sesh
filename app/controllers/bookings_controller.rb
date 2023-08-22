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

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
