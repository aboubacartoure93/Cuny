class TutorsController < ApplicationController
  include TutorsHelper
  before_action :authenticate_student!, except:[ :show, :home]
  before_action :set_tutor, only: [:show, :edit, :update, :destroy, :home]
  
layout "tutors"
  # GET /tutors
  # GET /tutors.json
  
  # def index
  #   @tutors = Tutor.all
  # end
  

   def home
    @student = current_student
    @tutors = Tutor.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  def index
   # @book = Book.posts_by_not_current_student(current_student)
   @tutors = Tutor.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end



  # GET /tutors/1
  # GET /tutors/1.json
  # def show
  # end


  def show
  @tutor = Tutor.find(params[:id])
  @student = @tutor.student
  end


  # GET /tutors/new
  # def new
  #   @tutor = Tutor.new
  # end


  def new
    @tutor = current_student.tutors.build
    #@book = Book.new
  end


  # GET /tutors/1/edit
  # def edit
  # end

  def edit
    @student = current_student
    @tutor = Tutor.find(params[:id])
    #@tutor = Tutor.find_by(set_tutor)
  end

  # POST /tutors
  # POST /tutors.json
  def create
    #@tutor = Tutor.new(tutor_params)
    @tutor = current_student.tutors.build(tutor_params)
    respond_to do |format|
      if @tutor.save
        format.html { redirect_to @tutor, notice: 'Tutor was successfully created.' }
        format.json { render :show, status: :created, location: @tutor }
      else
        format.html { render :new }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutors/1
  # PATCH/PUT /tutors/1.json
  def update
    @tutor = Tutor.find(params[:id])
    respond_to do |format|
      if @tutor.update(tutor_params)
        format.html { redirect_to @tutor, notice: 'Tutor was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutor }
      else
        format.html { render :edit }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutors/1
  # DELETE /tutors/1.json
  def destroy
    @tutor = Tutor.find(params[:id])
    @tutor.destroy
    respond_to do |format|
      if @tutor.destroy
      format.html { redirect_to tutors_url, notice: 'Tutor was successfully destroyed.' }
      format.json { head :no_content }
      #redirect_to tutor_path(@tutor)
      end
    end
  end


  def search
    if params[:search].present?
      @tutors = Tutor.search(params[:search])
    else
      @tutors = Tutor.all
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      #@tutor = Tutor.find(params[:tutor_id])
      @tutor = Tutor.find_by(params[:tutor_id])
    end

    # def set_book
    #   @book = Book.find_by(params[:book_id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_params
      params.require(:tutor).permit(:name, :degree, :classTeaching, :grades, :price, :schedule, :location, :student_id, :tutorDescription, :photo_tutor,
       :emailtutor, :availabletutor)
    end
end
