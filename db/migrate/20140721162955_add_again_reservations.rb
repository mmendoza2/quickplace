class AddAgainReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.datetime :hour
      t.integer :number
      t.integer :personsnumber
      t.integer :user_id
      t.integer :micrositio_id
      t.text :personsnumber
      t.timestamps
    end
  end
end
