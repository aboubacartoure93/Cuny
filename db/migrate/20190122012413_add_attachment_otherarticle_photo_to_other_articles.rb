class AddAttachmentOtherarticlePhotoToOtherArticles < ActiveRecord::Migration[4.2]
  def self.up
    change_table :other_articles do |t|
      t.attachment :otherarticle_photo
    end
  end

  def self.down
    remove_attachment :other_articles, :otherarticle_photo
  end
end
