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

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user

    if @instrument.save
      redirect_to instruments_path, notice: "Instrument was successfully added!"
    else
      render :new
    end
  end


  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to instruments_path, notice: "instrument successfully deleted"
  end


  private
  def instrument_params
    params.require(:instrument).permit(:name, :city)
  end
end
