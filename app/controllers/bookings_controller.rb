class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @flight.flight_code = 'Code' + @flight.id.to_s
  end

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight_id: @flight.id, passenger_count: params[:passenger_count])
    @booking.passenger_count.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [:name, :email])
  end
end
