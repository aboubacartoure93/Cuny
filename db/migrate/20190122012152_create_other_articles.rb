class CreateOtherArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :other_articles do |t|
      t.string :othersType
      t.integer :othersPrice
      t.boolean :availableNow
      t.integer :student_id
      t.text :othersDescription
      t.string :othersLocation
      t.string :condition

      t.timestamps
    end
  end
end
