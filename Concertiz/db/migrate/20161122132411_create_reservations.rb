class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :nb_tickets

      t.timestamps
    end
  end
end
