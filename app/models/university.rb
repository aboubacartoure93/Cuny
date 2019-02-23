class University < ActiveRecord::Base
	has_many :students
	has_many :books, :through => :students
end
