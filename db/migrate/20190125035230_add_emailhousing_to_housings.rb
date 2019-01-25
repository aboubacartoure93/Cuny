class AddEmailhousingToHousings < ActiveRecord::Migration[5.1]
  def change
    add_column :housings, :housingemail, :string
  end
end
