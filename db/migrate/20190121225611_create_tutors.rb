class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :degree
      t.text :classTeaching
      t.text :grades
      t.integer :price
      t.text :schedule
      t.string :location
      t.integer :student_id
      t.text :tutorDescription

      t.timestamps
    end
  end
end
