class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :videogame, null: false, foreign_key: true
      t.date :star_date
      t.date :end_date
      t.boolean :status

      t.timestamps
    end
  end
end
