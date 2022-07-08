class AddAttachmentUniversityPhotoToUniversities < ActiveRecord::Migration[7.0]
  def self.up
    change_table :universities do |t|
      t.attachment :university_photo
    end
  end

  def self.down
    remove_attachment :universities, :university_photo
  end
end
