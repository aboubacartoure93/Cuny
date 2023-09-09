class RemoveUnversityFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :unversity, :string
  end
end
