class BooksController < ApplicationController
  include BooksHelper
  before_action :authenticate_student!, except:[ :show, :home] #[:index, :show]
  # before_action :set_book, :require_permission, only: [:show, :edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy, :home]
  # GET /books
  # GET /books.json
  # before_filter :require_permission, only: :edit
  # def index
  #   @books = Book.all
  #   #@books = Book.where(follower_id: current_user.id, followed_id: current_user.id)
  # end
  
   def index
   #@book = Book.posts_by_not_current_student(current_student)
   #@books= Book.books_by_not_current_student(current_student)
   @books = Book.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)

 #puts response.headers['layouts/_header'] = 'header'
  #render "layouts/_header"
  end

  def home
    @books = Book.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end





  def search
    if params[:search].present?
      # @books = Book.search(params[:search])
      @books = Book.where('title LIKE ?', '%' + params[:search] + '%')
    else
      @books = Book.all
    end
  end



  # GET /books/1
  # GET /books/1.json
  
  # def show

  # end

  


  def show
  @book = Book.find(params[:id])
  @student = @book.student

  #@students = Student.where.not("id = ?",current_student.id).order("created_at DESC")
  #@conversations = Conversation.involving(current_student).order("created_at DESC")
  #@place = @event.place
  #@path = conversation_path(@conversation)
  end


  
# def index
#       @students = Student.where.not("id = ?",current_student.id).order("created_at DESC")
#       @conversations = Conversation.involving(current_student).order("created_at DESC")
#   end




  def edit
    @student = current_student
    @book = Book.find(params[:id])
  end

  # @conversation = Conversation.find(params[:conversation_id])
  #   @message = @conversation.messages.build(message_params)
  #   @message.student_id = current_student.id
  #   @message.save!

  #   @path = conversation_path(@conversation)






  # GET /books/new
  def new
    @book = current_student.books.build
    #@book = Book.new
  end

  # GET /books/1/edit
  # def edit

  # end





   def create
    @book = current_student.books.build(book_params)
    #@book = Book.new(book_params)
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
 


# def update
#   @student = current_student
#   # @post = Book.find(params[:id])
#   @task = @student.Book.find(params[:id])

#   if @book.update(book_params)
#     redirect_to action: :show, id: @book.id
#   else
#     render 'edit'
#   end
# end

def update
  @book = Book.find(params[:id])
  # @book.update(book_params)
   respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to book_path(@book), notice: 'Book was successfully updated.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  # redirect_to book_path(@book)
end




# def update
#     @user = current_user
#     @task = @user.task.find(params[:id])
#     if @task.update_attributes(task_params)
#       flash[:success] = "Task updated!"
#       redirect_to user_tasks_path(current_user)
#     else
#       render action: :edit
#     end
#   end






  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      if @book.destroy
      format.html { redirect_to student_path, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
      # redirect_to book_path(@book)
      end
    end
  end




# def destroy

#     @book = Book.find(params[:id])
#     @book.destroy

#     respond_to do |format|
#       format.js
#     end
#   end





  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_book
    #   @book = Book.find(params[:id])
    # end

    def set_book
      @book = Book.find_by(params[:book_id])
    end
    # Record.find_by(id: params[:id])
    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :price, :avaibility, :email, :isbn, :avatar, :condition, :student_id)
    end
  end



# --------------------- New try betwnen thsu ---------------------
    def conversation_params
     params.permit(:sender_id, :recipient_id)
    end


  def interlocutor(conversation)
    current_student == conversation.recipient ? conversation.sender : conversation.recipient
  end

# --------------------- New try betwnen thsu ---------------------




  # POST /books
  # POST /books.json
 
  # def create
  #   @book = Book.create(book_params)
  #   @book = Book.new(book_params)

  #   respond_to do |format|
  #     if @book.save
  #       format.html { redirect_to @book, notice: 'Book was successfully created.' }
  #       format.json { render :show, status: :created, location: @book }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @book.errors, status: :unprocessable_entity }
  #     end
  #   end
  #   @book = Book.create( book_params )
  # end

 



  # def create
  #   @book = Book.new(book_params)
  #   @book.avatar = params[:book][:avatar]
  #   @book.save
  #   respond_with @book
  # end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  
  # def update
  #   respond_to do |format|
  #     if @book.update(book_params)
  #       format.html { redirect_to @book, notice: 'Book was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @book }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @book.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


# def require_permission
#   if current_student = Book.find(params[:id]).student
#     @book.destroy
#     respond_to do |format|
#       format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
# end

  



#params.require(:place).permit(:name, :address, :zipcode, :website, :description, :avatar)



