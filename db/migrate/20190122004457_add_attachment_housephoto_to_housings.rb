class AddAttachmentHousephotoToHousings < ActiveRecord::Migration[4.2]
  def self.up
    change_table :housings do |t|
      t.attachment :housephoto
    end
  end

  def self.down
    remove_attachment :housings, :housephoto
  end
end
