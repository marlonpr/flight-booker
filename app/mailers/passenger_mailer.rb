class PassengerMailer < ApplicationMailer
  def booking_confirmation(booking)
    @booking = booking
    @passengers = booking.passengers
    @flight = booking.flight
    mail(to: @passengers.map(&:email), subject: "Booking Confirmation")
  end
end
