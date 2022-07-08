class HousingsController < ApplicationController
  include HousingsHelper
  #before_action :authenticate_student!, except:[ :show, :home]
  before_action :set_housing, only: [:show, :edit, :update, :destroy, :home]

  layout "housings"
  # GET /housings
  # GET /housings.json

  def home
    @student = current_student
    @housings = Housing.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  def index
    @housings = Housing.all 
    #@housings = Housing.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  def search
    if params[:search].present?
      # @books = Book.search(params[:search])
      @books = Housing.where('title LIKE ?', '%' + params[:search] + '%')
    else
      @books = Housing.all
    end
  end
 
  # GET /housings/1
  # GET /housings/1.json
  def show
    @housing = Housing.find(params[:id])
    @student = @housing.student
  end

  # GET /housings/new
  def new
    #@housing = Housing.new
    @housing= current_student.housings.build
  end

  # GET /housings/1/edit
  def edit
    @student = current_student
    @book = Housing.find(params[:id])
  end

  # POST /housings
  # POST /housings.json
  # def create
  #   @housing = Housing.new(housing_params)

  #   respond_to do |format|
  #     if @housing.save
  #       format.html { redirect_to @housing, notice: 'Housing was successfully created.' }
  #       format.json { render :show, status: :created, location: @housing }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @housing.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


   def create
    @housing = current_student.housings.build(housing_params)
    #@book = Book.new(book_params)
    respond_to do |format|
      if @housing.save
        format.html { redirect_to @housing, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @housing }
      else
        format.html { render :new }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housings/1
  # PATCH/PUT /housings/1.json
  # def update
  #   respond_to do |format|
  #     if @housing.update(housing_params)
  #       format.html { redirect_to @housing, notice: 'Housing was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @housing }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @housing.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def update
  @housing = Housing.find(params[:id])
  # @book.update(book_params)
   respond_to do |format|
      if @housing.update(housing_params)
        format.html { redirect_to housing_path(@housing), notice: 'Housing was successfully updated.' }
        format.json { render :show, status: :created, location: @housing }
      else
        format.html { render :new }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  # redirect_to book_path(@book)
end





  # DELETE /housings/1
  # DELETE /housings/1.json
  # def destroy
  #   @housing.destroy
  #   respond_to do |format|
  #     format.html { redirect_to housings_url, notice: 'Housing was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    @housing = Housing.find(params[:id])
    @housing.destroy
    respond_to do |format|
      if @housing.destroy
      format.html { redirect_to student_path, notice: 'Housing was successfully destroyed.' }
      format.json { head :no_content }
      # redirect_to book_path(@book)
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing
      @housing = Housing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_params
      params.require(:housing).permit(:rentalType, :numberofBedrooms, :numberofBathrooms, :housePrice, :availableDate, :student_id,
       :homeDescription, :address, :housephoto, :housingTitle)
    end
end




 # def set_book
 #      @book = Book.find_by(params[:book_id])
 #    end
 #    # Record.find_by(id: params[:id])
 #    # Never trust parameters from the scary internet, only allow the white list through.
 #    def book_params
 #      params.require(:book).permit(:title, :author, :price, :avaibility, :email, :isbn, :avatar, :condition, :student_id)
 #    end
 #  end
