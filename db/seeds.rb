Airport.create(code: "SFO")
Airport.create(code: "NYC")
Airport.create(code: "LAX")
Airport.create(code: "ATL")
Airport.create(code: "ORD")
Airport.create(code: "DFW")

# Find the airports
sfo = Airport.find_by(code: "SFO")
nyc = Airport.find_by(code: "NYC")
lax = Airport.find_by(code: "LAX")

# Create flights
Flight.create(departure_airport: sfo, arrival_airport: nyc, start_datetime: DateTime.new(2022, 12, 25, 10, 0, 0), duration: 5)
Flight.create(departure_airport: nyc, arrival_airport: lax, start_datetime: DateTime.new(2022, 12, 25, 12, 0, 0), duration: 6)
Flight.create(departure_airport: lax, arrival_airport: sfo, start_datetime: DateTime.new(2022, 12, 25, 14, 0, 0), duration: 4)
