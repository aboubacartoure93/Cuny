class University < ActiveRecord::Base
	searchkick
	attr_accessor :university_photo

	has_many :books
	#has_many :books, :through => :students
	has_many :tutors, :through => :students
	has_many :electronics_computers, :through => :students
	has_many :housings, :through => :students 
	has_many :vehicules, :through => :students
	has_many :other_articles, :through => :students

	has_many :join_universities_students, dependent: :destroy
    has_many :students, :through => :join_universities_students, dependent: :destroy
    #after_create :add_current_student_to_join_universities_students
    
    validates :website,:domainEdu, uniqueness: { case_sensitive: false,  message: "This organisation exists already, check the list!" } 
    

    has_attached_file :university_photo, styles: { medium: "223x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :university_photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    scope :universities_by_not_current_student, ->(student) { where.not(student: student) }


    def add_current_student_to_join_universities_students
		#students << student
		#join_universities_students << current_student
	end

end

 