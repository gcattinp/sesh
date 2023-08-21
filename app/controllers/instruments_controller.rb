class InstrumentsController < ApplicationController

  def index
    @instrument = Instrument.all
  end
  
end
