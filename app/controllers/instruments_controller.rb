class InstrumentsController < ApplicationController

  def index
    @instrument = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
    @name = @instrument.name
    @city = @instrument.city
  end

end
