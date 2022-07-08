class CreateJoinUniversitiesStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :join_universities_students do |t|
      t.references :student, foreign_key: true
      t.references :university, foreign_key: true

      t.timestamps
    end
  end
end
