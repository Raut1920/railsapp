class PlantationsController < ApplicationController
  before_action :set_plantation, only: [:show, :edit, :update, :destroy]

  # GET /plantations
  # GET /plantations.json
  def index
    @plantations = Plantation.all
  end

  # GET /plantations/1
  # GET /plantations/1.json
  def show
  end

  # GET /plantations/new
  def new
    @plantation = Plantation.new
  end

  # GET /plantations/1/edit
  def edit
  end

  # POST /plantations
  # POST /plantations.json
  def create
    @plantation = Plantation.new(plantation_params)

    respond_to do |format|
      if @plantation.save
        format.html { redirect_to @plantation, notice: 'Plantation was successfully created.' }
        format.json { render :show, status: :created, location: @plantation }
      else
        format.html { render :new }
        format.json { render json: @plantation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantations/1
  # PATCH/PUT /plantations/1.json
  def update
    respond_to do |format|
      if @plantation.update(plantation_params)
        format.html { redirect_to @plantation, notice: 'Plantation was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantation }
      else
        format.html { render :edit }
        format.json { render json: @plantation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantations/1
  # DELETE /plantations/1.json
  def destroy
    @plantation.destroy
    respond_to do |format|
      format.html { redirect_to plantations_url, notice: 'Plantation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantation
      @plantation = Plantation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantation_params
      params.require(:plantation).permit(:image, :name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases)
    end
end
