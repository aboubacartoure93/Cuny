class AddEmailElectronicsComputerToElectronicsComputers < ActiveRecord::Migration[5.1]
  def change
    add_column :electronics_computers, :electronicsComputerEmail, :string
  end
end
