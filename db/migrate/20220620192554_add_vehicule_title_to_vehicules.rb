class AddVehiculeTitleToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :vehiculeTitle, :string
  end
end
