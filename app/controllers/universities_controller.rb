class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy, :join, :leave]
  before_action :authorize_admin!, only: [:edit, :update, :destroy]
  before_action :authenticate_student! 

  # GET /universities
  # GET /universities.json
  def index
    @universities = University.all
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
  end

  # GET /universities/new
  # def new
  #   @university = University.new
  # end

  def new
    @university = current_student.universities.build
    #@book = Book.new
  end

  # def new
  #    #@event.users << current_user
  #    @university.students << current_student
  #   redirect_to @university, notice: "You're being added to university!"

  # end

     #new test here for joining and leaving university-------------------------------

  def join
    @university.students << current_student
    redirect_to @university, notice: "You're being added to university!"
  rescue
    redirect_to @university, notice: "You're already added to university!"
  end

  def leave
   @university.students.delete(current_student)
   redirect_to @university, notice: "You are Removed from university!"
  end
#---------------------------- test end here-----------------------------------------------------------

 



  # GET /universities/1/edit
  def edit
  end

  # POST /universities
  # POST /universities.json
  # def create
  #   @university = University.new(university_params)

  #   respond_to do |format|
  #     if @university.save
  #       format.html { redirect_to @university, notice: 'University was successfully created.' }
  #       format.json { render :show, status: :created, location: @university }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @university.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

   def create
    @university = current_student.universities.build(university_params)
    #@university = current_student.universities.build(university_params)

    respond_to do |format|
      if @university.save
        format.html { redirect_to @university, notice: 'university was successfully created.' }
        format.json { render :show, status: :created, location: @university }
        @university.students << current_student
      else
        format.html { render :new }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end




  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @university.update(university_params)
        format.html { redirect_to @university, notice: 'University was successfully updated.' }
        format.json { render :show, status: :ok, location: @university }
        @university.students << current_student
      else
        format.html { render :edit }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universities/1
  # DELETE /universities/1.json
  def destroy
    @university.destroy
    respond_to do |format|
      format.html { redirect_to universities_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(:name, :university_photo, :website, :domainEdu ,:student_id) #student_ids: [])
    end
 

    def authorize_admin!
      authenticate_student!
      unless current_student.admin?
        redirect_to universities_path, alert: "You must be an admin to do that."
      end
    end


end
