class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.boolean :avaibility
      t.string :email
      t.string :isbn
      t.string :description
      t.attachment :avatar
      t.timestamps null: false
    end
  end
  def self.up
    change_table :books do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :books, :avatar
  end


end


