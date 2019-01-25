class AddAvailabletutorToTutors < ActiveRecord::Migration[5.1]
  def change
    add_column :tutors, :availabletutor, :boolean
  end
end
