class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flights = @flights.by_departure_airport(params[:departure_code])
    @flights = @flights.by_arrival_airport(params[:arrival_code])
    @flights = @flights.by_passenger(params[:passenger])
    @flights = @flights.by_date(params[:flight_date])
  end
end
