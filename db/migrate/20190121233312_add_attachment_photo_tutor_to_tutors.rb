class AddAttachmentPhotoTutorToTutors < ActiveRecord::Migration[4.2]
  def self.up
    change_table :tutors do |t|
      t.attachment :photo_tutor
    end
  end

  def self.down
    remove_attachment :tutors, :photo_tutor
  end
end
