# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Airplanes............"

Airplane.destroy_all

a1 = Airplane.create!(
    name: 'Roo',
    row: 30,
    column: 4
)
a2 = Airplane.create!(
    name: 'Enterprise',
    row: 25,
    column: 4
)
a3 = Airplane.create!(
    name: 'Longreach',
    row: 20,
    column: 4
)

puts "Done. Created #{Airplane.count} planes."


##################################################

puts "Creating flights............"

Flight.destroy_all

f1 = Flight.create!(
    flight_number: 300,
    origin: 'SYD',
    destination:  'LAX',
    date: '2022/02/18'
)
f2 = Flight.create!(
    flight_number: 400,
    origin: 'SYD',
    destination:  'LHR',
    date: '2022/02/18'
)
f3 = Flight.create!(
    flight_number: 500,
    origin: 'SYD',
    destination:  'AKL',
    date: '2022/02/18'
)


puts "Done. Created #{Flight.count} flights."


##################################################


puts "Creating users......."

User.destroy_all

u1 = User.create!(
    name: 'Cameron',
    is_admin: true,
    password: 'chicken'
) 
u2 = User.create!(
    name: 'David',
    is_admin: true,
    password: 'chicken'
) 
u3 = User.create!(
    name: 'Jia',
    is_admin: true,
    password: 'chicken'
) 

puts "Done. Created #{User.count} users."


##################################################


puts "Creating reservations....."

Reservation.destroy_all

r1 = Reservation.create!
r2 = Reservation.create!
r3 = Reservation.create!

u1.reservations << r1
u2.reservations << r2
u3.reservations << r3

f1.reservations << r1
f2.reservations << r2
f3.reservations << r3

a1.flights << f1
a2.flights << f2
a3.flights << f3





