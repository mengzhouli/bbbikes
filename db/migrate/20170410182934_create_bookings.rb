class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.numeric :fee
      t.references :user, foreign_key: true
      t.references :bike, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
