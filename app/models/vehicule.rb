class Vehicule < ApplicationRecord
	searchkick
	attr_accessor :vehicule_photo
	belongs_to :student

	has_attached_file :vehicule_photo, styles: { medium: "223x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :vehicule_photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	scope :vehicules_by_not_current_student, ->(student) { where.not(student: student) }

end
 


   