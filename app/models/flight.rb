class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'
  has_many :bookings

  attr_accessor :flight_code

  scope :by_departure_airport, ->(code) { where(departure_airport: Airport.find_by(code: code)) if code.present? }
  scope :by_arrival_airport, ->(code) { where(arrival_airport: Airport.find_by(code: code)) if code.present? }
  scope :by_passenger, ->(passenger) { where("available_seats >= ?", passenger) if passenger.present? }
  scope :by_date, ->(date) { where(start_datetime: date.to_date.beginning_of_day..date.to_date.end_of_day) if date.present? }
end
