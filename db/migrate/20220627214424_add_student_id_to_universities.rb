class AddStudentIdToUniversities < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :student_id, :integer
  end
end
