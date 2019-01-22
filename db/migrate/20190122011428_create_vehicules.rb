class CreateVehicules < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicules do |t|
      t.string :vehiculeType
      t.integer :vehiculePrice
      t.boolean :availableNow
      t.integer :student_id
      t.text :vehiculeDescription
      t.string :vehiculeLocation
      t.string :condition
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
