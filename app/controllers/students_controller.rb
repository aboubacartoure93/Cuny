# class StudentsController < ApplicationController
#   before_action :authenticate_student!  

#   def show
#     # @student = Student.find(params[:id])
#     # @student = current_student 
#    	# @books = @student.books
#     @books = current_student.books
#   end
# end



class StudentsController < ApplicationController
   before_action :authenticate_student!  
  before_action :set_student, only:[:show, :edit, :update, :destroy]

  def show
  # @student = Student.find(params[:id])
   @student = current_student 
   #@books = @student.books
   #@book = current_student.books
   @book = @current_student.books
  end

  # @place = @event.place
  #   @post = Post.new
     
  def edit

  end

  private

   def set_student
    @student = Student.find_by_id(params[:student_id])
  end

  def user_params
    params.require(:student).permit(:fname, :lname, :email, :password, :password_confirmation)
  end


end

# def set_course
#  @course = Course.find(params[:course_id])
# end