class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :artist
      t.date :date
      t.string :adress
      t.integer :price
      t.integer :places

      t.timestamps
    end
  end
end
