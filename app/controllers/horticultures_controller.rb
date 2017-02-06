class HorticulturesController < ApplicationController
  before_action :set_horticulture, only: [:show, :edit, :update, :destroy]

  # GET /horticultures
  # GET /horticultures.json
  def index
    @horticultures = Horticulture.all
  end

  # GET /horticultures/1
  # GET /horticultures/1.json
  def show
  end

  # GET /horticultures/new
  def new
    @horticulture = Horticulture.new
  end

  # GET /horticultures/1/edit
  def edit
  end

  # POST /horticultures
  # POST /horticultures.json
  def create
    @horticulture = Horticulture.new(horticulture_params)

    respond_to do |format|
      if @horticulture.save
        format.html { redirect_to @horticulture, notice: 'Horticulture was successfully created.' }
        format.json { render :show, status: :created, location: @horticulture }
      else
        format.html { render :new }
        format.json { render json: @horticulture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horticultures/1
  # PATCH/PUT /horticultures/1.json
  def update
    respond_to do |format|
      if @horticulture.update(horticulture_params)
        format.html { redirect_to @horticulture, notice: 'Horticulture was successfully updated.' }
        format.json { render :show, status: :ok, location: @horticulture }
      else
        format.html { render :edit }
        format.json { render json: @horticulture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horticultures/1
  # DELETE /horticultures/1.json
  def destroy
    @horticulture.destroy
    respond_to do |format|
      format.html { redirect_to horticultures_url, notice: 'Horticulture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horticulture
      @horticulture = Horticulture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horticulture_params
      params.require(:horticulture).permit(:name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases)
    end
end
