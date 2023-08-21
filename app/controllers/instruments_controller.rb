class InstrumentsController < ApplicationController

  def show
    @instrument = Instrument.find(params[:id])
    @name = @instrument.name
    @city = @instrument.city
  end


end
