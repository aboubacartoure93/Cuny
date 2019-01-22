class AddStudentIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :student_id, :integer
  end
end
