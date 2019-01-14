module ApplicationHelper
 def book_author(book)
  student_signed_in? && current_student.id == book.student_id
 end

end
