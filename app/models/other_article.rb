class OtherArticle < ApplicationRecord
	searchkick
	attr_accessor :otherarticle_photo
	belongs_to :student

	has_attached_file :otherarticle_photo, styles: { medium: "223x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :otherarticle_photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	scope :other_articles_by_not_current_student, ->(student) { where.not(student: student) }
end
 


# class ElectronicsComputer < ApplicationRecord

# 	searchkick
# 	attr_accessor :electronicsphoto
# 	belongs_to :student

# 	has_attached_file :electronicsphoto, styles: { medium: "223x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
# 	validates_attachment_content_type :electronicsphoto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

# 	scope :electronics_computers_by_not_current_student, ->(student) { where.not(student: student) }


# end
  
 
  
