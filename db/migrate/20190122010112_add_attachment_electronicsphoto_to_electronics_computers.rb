class AddAttachmentElectronicsphotoToElectronicsComputers < ActiveRecord::Migration[4.2]
  def self.up
    change_table :electronics_computers do |t|
      t.attachment :electronicsphoto
    end
  end

  def self.down
    remove_attachment :electronics_computers, :electronicsphoto
  end
end
