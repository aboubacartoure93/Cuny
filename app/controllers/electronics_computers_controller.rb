class ElectronicsComputersController < ApplicationController
  before_action :set_electronics_computer, only: [:show, :edit, :update, :destroy]

  # GET /electronics_computers
  # GET /electronics_computers.json
  def index
    @electronics_computers = ElectronicsComputer.all
  end

  # GET /electronics_computers/1
  # GET /electronics_computers/1.json
  def show
  end

  # GET /electronics_computers/new
  def new
    @electronics_computer = ElectronicsComputer.new
  end

  # GET /electronics_computers/1/edit
  def edit
  end

  # POST /electronics_computers
  # POST /electronics_computers.json
  def create
    @electronics_computer = ElectronicsComputer.new(electronics_computer_params)

    respond_to do |format|
      if @electronics_computer.save
        format.html { redirect_to @electronics_computer, notice: 'Electronics computer was successfully created.' }
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
  def destroy
    @electronics_computer.destroy
    respond_to do |format|
      format.html { redirect_to electronics_computers_url, notice: 'Electronics computer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electronics_computer
      @electronics_computer = ElectronicsComputer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electronics_computer_params
      params.require(:electronics_computer).permit(:electronicsTitle, :electronicsPrice, :availableNow, :student_id, :electronisDescription, :electronicsLocation, :condition)
    end
end
