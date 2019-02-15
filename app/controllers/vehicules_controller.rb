class VehiculesController < ApplicationController
  before_action :set_vehicule, only: [:show, :edit, :update, :destroy]

  layout "vehicules"
  
  # GET /vehicules
  # GET /vehicules.json
  def index
    @vehicules = Vehicule.all
  end

  # GET /vehicules/1
  # GET /vehicules/1.json
  def show
  end

  # GET /vehicules/new
  def new
    @vehicule = Vehicule.new
  end

  # GET /vehicules/1/edit
  def edit
  end

  # POST /vehicules
  # POST /vehicules.json
  def create
    @vehicule = Vehicule.new(vehicule_params)

    respond_to do |format|
      if @vehicule.save
        format.html { redirect_to @vehicule, notice: 'Vehicule was successfully created.' }
        format.json { render :show, status: :created, location: @vehicule }
      else
        format.html { render :new }
        format.json { render json: @vehicule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicules/1
  # PATCH/PUT /vehicules/1.json
  def update
    respond_to do |format|
      if @vehicule.update(vehicule_params)
        format.html { redirect_to @vehicule, notice: 'Vehicule was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicule }
      else
        format.html { render :edit }
        format.json { render json: @vehicule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicules/1
  # DELETE /vehicules/1.json
  def destroy
    @vehicule.destroy
    respond_to do |format|
      format.html { redirect_to vehicules_url, notice: 'Vehicule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicule
      @vehicule = Vehicule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicule_params
      params.require(:vehicule).permit(:vehiculeType, :vehiculePrice, :availableNow, :student_id, :vehiculeDescription, :vehiculeLocation, :condition, :make, :model, :year)
    end
end
