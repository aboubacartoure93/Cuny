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
  def search
    if params[:search].present?
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end


  def home
    @books = Book.all
  end


  def index
   # @book = Book.posts_by_not_current_student(current_student)
   @books = Book.where.not(student_id: current_student.id)
  end

  # GET /books/1
  # GET /books/1.json
  
  # def show

  # end

  


  def show
  @book = Book.find(params[:id])
end

  # GET /books/new
  def new
    @book = current_student.books.build
    #@book = Book.new
  end

  # GET /books/1/edit
  def edit

  end


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
 


def update
  @post = Book.find(params[:id])

  if @book.update(book_params)
    redirect_to action: :show, id: @book.id
  else
    render 'edit'
  end
end





  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


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
      params.require(:book).permit(:title, :author, :price, :avaibility, :email, :isbn, :avatar)
    end
  end


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



