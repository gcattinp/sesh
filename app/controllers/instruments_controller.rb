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
    @description = @instrument.description
    @genre = @instrument.genre
    @city = @instrument.city
    @price = @instrument.price
    @available = @instrument.available
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

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])

    if @instrument.user == current_user
      if @instrument.update(instrument_params)
        redirect_to instrument_path(@instrument), notice: "Instrument was successfully updated!"
      else
        render :edit
      end
    else
      redirect_to instrument_path(@instrument), alert: "You don't have permission to edit this instrument"
    end
  end

  def destroy
    @instrument = Instrument.find(params[:id])

    if @instrument.user == current_user
      @instrument.destroy
      redirect_to dashboard_path, notice: "Instrument successfully deleted"
    else
      rredirect_to dashboard_path, alert: "You don't have permission to delete this instrument"
    end
  end

  private
  def instrument_params
    params.require(:instrument).permit(:name, :city, :description, :photo, :available, :price, :genre)
  end
end
