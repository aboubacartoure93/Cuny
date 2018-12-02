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

  # def index
  #   @books = Book.all
  #  end

  #  def index
  #  # @book = Book.posts_by_not_current_student(current_student)
  #  @books = Book.where.not(student_id: current_student.id)
  # end



  # class UsersController < ApplicationController ------------------- New Try chat----- below ------
  # before_filter :authenticate_user!

  def index
      @students = Student.where.not("id = ?",current_student.id).order("created_at DESC")
      @conversations = Conversation.involving(current_student).order("created_at DESC")
  end


# ------------------------ up to here -------------------------------

  # def update
  #   if @student.update(user_params)
  #     redirect_to @student, notice: 'Profile Updated'
  #   else
  #     render :edit
  #   end
  # end     


  # @place = @event.place
  #   @post = Post.new
     
  def edit

  end #student_registration_path

#   def edit
#   if current_student.update_attributes(student_params)
#     flash[:notice] = "Student information updated"
#     redirect_to edit_student_registration_path
#   else
#     flash[:error] = "Invalid student information"
#     redirect_to edit_student_registration_path
#   end
# end



  def name
    name = fname + ' '
    # name += "#{middle_initial}. " unless middle_initial.nil?
    name += lname
  end




  private

   def set_student
    @student = Student.find_by_id(params[:student_id])
  end

  def user_params
    params.require(:student).permit(:fname, :lname, :email, :password, :password_confirmation, :current_password, :profilepic, :name)
  end


end

# def set_course
#  @course = Course.find(params[:course_id])
# end