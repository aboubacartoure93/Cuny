class CreateHousings < ActiveRecord::Migration[5.1]
  def change
    create_table :housings do |t|
      t.string :rentalType
      t.integer :numberofBedrooms
      t.integer :numberofBathrooms
      t.integer :housePrice
      t.datetime :availableDate
      t.integer :student_id
      t.text :homeDescription
      t.string :address

      t.timestamps
    end
  end
end
