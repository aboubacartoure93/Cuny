class AddAttachmentVehiculePhotoToVehicules < ActiveRecord::Migration[4.2]
  def self.up
    change_table :vehicules do |t|
      t.attachment :vehicule_photo
    end
  end

  def self.down
    remove_attachment :vehicules, :vehicule_photo
  end
end
