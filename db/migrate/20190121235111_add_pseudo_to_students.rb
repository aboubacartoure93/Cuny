class AddPseudoToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :pseudo, :string
  end
end
