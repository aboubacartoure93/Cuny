class CreateElectronicsComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :electronics_computers do |t|
      t.string :electronicsTitle
      t.integer :electronicsPrice
      t.boolean :availableNow
      t.integer :student_id
      t.text :electronisDescription
      t.string :electronicsLocation
      t.string :condition

      t.timestamps
    end
  end
end
