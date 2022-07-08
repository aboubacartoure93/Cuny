class AddUniversityIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :university_id, :integer
  end
end
