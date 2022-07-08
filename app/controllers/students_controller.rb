class StudentsController < ApplicationController
  before_action :authenticate_student!  
  before_action :set_student, only:[:show, :edit, :update, :destroy]
  #before_action :authorize_admin, only: [:index]
  
# def show
#    @user = current_user 
#    @joined_events = @user.joined_events
#   end

  def show
     @student = current_student
     @book = @current_student.books

     @universities = JoinUniversitiesStudent.where("id = ?",current_student.id)

     @join_universities_students = @student.join_universities_students    
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

    def destroy
    @student = Student.find(params[:id])
    @student.destroy

    if @student.destroy
        redirect_to root_url, notice: "Account deleted."
    end
  end




  private

  def set_student
    @student = Student.find_by_id(params[:student_id])
  end

  def user_params
    params.require(:student).permit(:fname, :lname, :email, :password, :password_confirmation, :current_password, :profilepic, :name, :pseudo)
  end
  


end

