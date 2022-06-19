class HousingsController < ApplicationController
  include HousingsHelper
  before_action :authenticate_student!, except:[ :show, :home]
  before_action :set_housing, only: [:show, :edit, :update, :destroy, :home]

  layout "housings"
  # GET /housings
  # GET /housings.json

  def home
    @student = current_student
    @housings = Housing.all.order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  def index
    #@housings = Housing.all 
    @housings = Housing.where.not(student_id: current_student.id).order("created_at DESC").paginate(page: params[:page], per_page: 16)
  end

  # GET /housings/1
  # GET /housings/1.json
  def show
    @housing = Housing.find(params[:id])
    @student = @housing.student
  end

  # GET /housings/new
  def new
    @housing = Housing.new
    @housing= current_student.housings.build
  end

  # GET /housings/1/edit
  def edit
  end

  # POST /housings
  # POST /housings.json
  def create
    @housing = Housing.new(housing_params)

    respond_to do |format|
      if @housing.save
        format.html { redirect_to @housing, notice: 'Housing was successfully created.' }
        format.json { render :show, status: :created, location: @housing }
      else
        format.html { render :new }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housings/1
  # PATCH/PUT /housings/1.json
  def update
    respond_to do |format|
      if @housing.update(housing_params)
        format.html { redirect_to @housing, notice: 'Housing was successfully updated.' }
        format.json { render :show, status: :ok, location: @housing }
      else
        format.html { render :edit }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housings/1
  # DELETE /housings/1.json
  def destroy
    @housing.destroy
    respond_to do |format|
      format.html { redirect_to housings_url, notice: 'Housing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing
      @housing = Housing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_params
      params.require(:housing).permit(:rentalType, :numberofBedrooms, :numberofBathrooms, :housePrice, :availableDate, :student_id, :homeDescription, :address)
    end
end
