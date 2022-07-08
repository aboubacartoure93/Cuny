class JoinUniversitiesStudent < ApplicationRecord
  belongs_to :student
  belongs_to :university

  validates_uniqueness_of :student_id, :scope => :university_id
end
 