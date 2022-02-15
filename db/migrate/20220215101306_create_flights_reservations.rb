class CreateFlightsReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :flights_reservations do |t|
      t.integer :flight_id
      t.integer :reservation_id
    end
  end
end
