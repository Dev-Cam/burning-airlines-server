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
    name: 'Roo (747)',
    row: 30,
    column: 4
)
a2 = Airplane.create!(
    name: 'Enterprise (787 Dreamliner)',
    row: 25,
    column: 4
)
a3 = Airplane.create!(
    name: 'Longreach (A330)',
    row: 20,
    column: 4
)
a4 = Airplane.create!(
    name: 'Not Serviced (747)',
    row: 30,
    column: 4
)
a5 = Airplane.create!(
    name: 'Loose Wings (787 Dreamliner)',
    row: 25,
    column: 4
)
a6 = Airplane.create!(
    name: 'Funny Noise at Back (A330)',
    row: 20,
    column: 4
)
a7 = Airplane.create!(
    name: 'Wobbly Seats (747)',
    row: 30,
    column: 4
)
a8 = Airplane.create!(
    name: 'Not Much Fuel (787 Dreamliner)',
    row: 25,
    column: 4
)
a9 = Airplane.create!(
    name: 'Cracked Windscreen (A330)',
    row: 20,
    column: 4
)

puts "Done. Created #{Airplane.count} planes."


##################################################

puts "Creating flights............"

Flight.destroy_all

f1 = Flight.create!(
    flight_number: 1,
    origin: 'SYD',
    destination:  'LAX',
    date: '2022/02/18'
)
f2 = Flight.create!(
    flight_number: 2,
    origin: 'SYD',
    destination:  'LHR',
    date: '2022/02/18'
)
f3 = Flight.create!(
    flight_number: 14,
    origin: 'SYD',
    destination:  'AKL',
    date: '2022/02/18'
)
f4 = Flight.create!(
    flight_number: 16,
    origin: 'SYD',
    destination:  'ICN',
    date: '2022/02/18'
)
f5 = Flight.create!(
    flight_number: 99,
    origin: 'SYD',
    destination:  'BKK',
    date: '2022/02/18'
)
f6 = Flight.create!(
    flight_number: 42,
    origin: 'SYD',
    destination:  'HND',
    date: '2022/02/18'
)


puts "Done. Created #{Flight.count} flights."


##################################################


puts "Creating users......."

User.destroy_all

u1 = User.create!(
    name: 'Admin',
    is_admin: true,
    password: 'chicken'
) 
u2 = User.create!(
    name: 'David',
    is_admin: false,
    password: 'chicken'
) 
u3 = User.create!(
    name: 'Jia',
    is_admin: false,
    password: 'chicken'
) 
u4 = User.create!(
    name: 'Cameron',
    is_admin: false,
    password: 'chicken'
)
u5 = User.create!(
    name: 'Luke',
    is_admin: false,
    password: 'chicken'
) 
u6 = User.create!(
    name: 'Ro',
    is_admin: false,
    password: 'chicken'
) 
u7 = User.create!(
    name: 'Dan',
    is_admin: false,
    password: 'chicken'
) 
u8 = User.create!(
    name: 'Angela',
    is_admin: false,
    password: 'chicken'
) 
u9 = User.create!(
    name: 'Jesus',
    is_admin: false,
    password: 'chicken'
) 
u10 = User.create!(
    name: 'Laurence',
    is_admin: false,
    password: 'chicken'
)  
u11 = User.create!(
    name: 'Stanley',
    is_admin: false,
    password: 'chicken'
)  

puts "Done. Created #{User.count} users."


##################################################


puts "Creating reservations....."

Reservation.destroy_all

r1 = Reservation.create!(
    seat:'DO'
)
r2 = Reservation.create!(
    seat:'A0'
)
r3 = Reservation.create!(
    seat:'A1'
)
r4 = Reservation.create!(
    seat:'D1'
)
r5 = Reservation.create!(
    seat:'A2'
)
r6 = Reservation.create!(
    seat:'D2'
)
r7 = Reservation.create!(
    seat:'B3'
)
r8 = Reservation.create!(
    seat:'A3'
)
r9 = Reservation.create!(
    seat:'B4'
)
r10 = Reservation.create!(
    seat:'D4'
)
r11 = Reservation.create!(
    seat:'B6'
)
r12 = Reservation.create!(
    seat:'D7'
)
r13 = Reservation.create!(
    seat:'A8'
)
r14 = Reservation.create!(
    seat:'B8'
)
r15 = Reservation.create!(
    seat:'A8'
)
r16 = Reservation.create!(
    seat:'B9'
)
r17 = Reservation.create!(
    seat:'C9'
)
r18 = Reservation.create!(
    seat:'D9'
)
r19 = Reservation.create!(
    seat:'D10'
)
r20 = Reservation.create!(
    seat:'C10'
)

puts "Done. created #{Reservation.count} reservations."



u2.reservations << r1
u3.reservations << r2
u4.reservations << r3
u5.reservations << r4
u6.reservations << r5 << r16
u7.reservations << r6 << r15
u8.reservations << r7 << r14 << r20
u9.reservations << r8 << r13 << r19
u10.reservations << r9 << r12 << r18
u11.reservations << r10 << r11 << r17

f1.reservations << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10
f2.reservations
f3.reservations

a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
a5.flights << f5
a6.flights << f6


