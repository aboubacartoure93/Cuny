class StudentsController < ApplicationController
  before_action :authenticate_student!  
  before_action :set_student, only:[:show, :edit, :update, :destroy]
  #before_action :authorize_admin, only: [:index]
  
  # def show
  
  #  @student = current_student 
  
  #  @book = @current_student.books
  # end

def show
   @student = current_student
   @book = @current_student.books
  # @student = Student.find(params[:id])
  # @book = Book.find(params[:id])

end



  def index
      @students = Student.where.not("id = ?",current_student.id).order("created_at DESC")
      @conversations = Conversation.involving(current_student).order("created_at DESC")
  end

 

     
  def edit
    

  end 



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
    params.require(:student).permit(:fname, :lname, :email, :password, :password_confirmation, :current_password, :profilepic, :name, :pseudo)
  end


end

