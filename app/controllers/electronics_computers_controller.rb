class ElectronicsComputersController < ApplicationController
  include ElectronicsComputersHelper
  #before_action :authenticate_student!, except:[ :show, :home]

  before_action :set_electronics_computer, only: [:show, :edit, :update, :destroy, :home]



  #  include TutorsHelper
  # before_action :authenticate_student!, except:[ :show, :home]
  # before_action :set_tutor, only: [:show, :edit, :update, :destroy, :home]

layout "electronics"
  # GET /electronics_computers 
  # GET /electronics_computers.json

  def home
    @student = current_student
    @electronics_computers = ElectronicsComputer.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end


  def index
    @electronics_computers = ElectronicsComputer.all
    #@electronics_computers= ElectronicsComputer.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  # GET /electronics_computers/1
  # GET /electronics_computers/1.json
  def show
    @electronics_computer = ElectronicsComputer.find(params[:id])
    @student = @electronics_computer.student
  end
 
  # GET /electronics_computers/new
  def new
    #@electronics_computer = ElectronicsComputer.new
    @electronics_computer= current_student.electronics_computers.build
  end

  # GET /electronics_computers/1/edit
  def edit
  end

  # POST /electronics_computers
  # POST /electronics_computers.json
 

  def create
    @electronics_computer = current_student.electronics_computers.build(electronics_computer_params)

    respond_to do |format|
      if @electronics_computer.save
        format.html { redirect_to @electronics_computer, notice: 'electronics was successfully created.' }
        format.json { render :show, status: :created, location: @electronics_computer }
      else
        format.html { render :new }
        format.json { render json: @electronics_computer.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /electronics_computers/1
  # PATCH/PUT /electronics_computers/1.json
  def update
    respond_to do |format|
      if @electronics_computer.update(electronics_computer_params)
        format.html { redirect_to @electronics_computer, notice: 'Electronics computer was successfully updated.' }
        format.json { render :show, status: :ok, location: @electronics_computer }
      else
        format.html { render :edit }
        format.json { render json: @electronics_computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronics_computers/1
  # DELETE /electronics_computers/1.json
  # def destroy
  #   @electronics_computer.destroy
  #   respond_to do |format|
  #     format.html { redirect_to electronics_computers_url, notice: 'Electronics computer was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    @electronics_computer = ElectronicsComputer.find(params[:id])
    @electronics_computer.destroy
    respond_to do |format|
      if @electronics_computer.destroy
      format.html { redirect_to electronics_computers_url, notice: 'electronics was successfully destroyed.' }
      format.json { head :no_content }
      #redirect_to tutor_path(@tutor)
      end
    end
  end




  private
   
    def set_electronics_computer
      @electronics_computer = ElectronicsComputer.find_by(params[:electronics_computer_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electronics_computer_params
      params.require(:electronics_computer).permit(:electronicsTitle, :electronicsPrice, 
        :availableNow, :student_id, :electronisDescription, :electronicsLocation, :condition, 
        :electronicsphoto, :electronicsComputerEmail)
    end
end


#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_tutor
#       #@tutor = Tutor.find(params[:tutor_id])
#       @tutor = Tutor.find_by(params[:tutor_id])
#     end

#     # def set_book
#     #   @book = Book.find_by(params[:book_id])
#     # end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def tutor_params
#       params.require(:tutor).permit(:name, :degree, :classTeaching, :grades, :price, :schedule, :location, :student_id, :tutorDescription, :photo_tutor,
#        :emailtutor, :availabletutor)
#     end
# end






