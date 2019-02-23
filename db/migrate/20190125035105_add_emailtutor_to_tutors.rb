class AddEmailtutorToTutors < ActiveRecord::Migration[5.1]
  def change
    add_column :tutors, :emailtutor, :string
  end
end
