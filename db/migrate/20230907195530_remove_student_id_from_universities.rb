class RemoveStudentIdFromUniversities < ActiveRecord::Migration[7.0]
  def change
    remove_column :universities, :student_id, :integer
  end
end
