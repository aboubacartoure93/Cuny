class RemoveForeignKeyToMessages < ActiveRecord::Migration[7.0]
  def change
  	remove_foreign_key :messages, :students
  end
end
