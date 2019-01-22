class AddAvailableNowToHousings < ActiveRecord::Migration[5.1]
  def change
    add_column :housings, :availableNow, :boolean
  end
end
