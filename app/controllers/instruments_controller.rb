class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
    if params[:city].present?
      @instruments = @instruments.where(city: params[:city])
    end

    if params[:name].present?
      @instruments = @instruments.where("name ILIKE ?", "%#{params[:name]}%")
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @name = @instrument.name
    @city = @instrument.city
  end

end
