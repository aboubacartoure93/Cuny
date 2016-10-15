class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.boolean :avaibility
      t.string :email
      t.string :isbn

      t.timestamps null: false
    end
  end
end
