class Book < ActiveRecord::Base
	searchkick
	attr_accessor :avatar
	#has_many :books
	belongs_to :student


	has_attached_file :avatar, styles: { medium: "223x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"

	#has_attached_file :avatar, styles: { medium: "300x300#{}", thumb: "100x100#{}", icon: "35x35#{}" }, default_url: "/images/:style/missing.png"
  	# validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  	scope :books_by_not_current_student, ->(student) { where.not(student: student) }

  	# def self.search(search)
  	# 	if search
   #  		find(:all, :name => ['name LIKE ?', "%#{search}%"])
  	# 	else
   #  		find(:all)
  	# 	end
  	# end
  	

 

end
 