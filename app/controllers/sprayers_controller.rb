class SprayersController < ApplicationController
  before_action :set_sprayer, only: [:show, :edit, :update, :destroy]

  # GET /sprayers
  # GET /sprayers.json
  def index
    @sprayers = Sprayer.all
  end

  # GET /sprayers/1
  # GET /sprayers/1.json
  def show
  end

  # GET /sprayers/new
  def new
    @sprayer = Sprayer.new
  end

  # GET /sprayers/1/edit
  def edit
  end

  # POST /sprayers
  # POST /sprayers.json
  def create
    @sprayer = Sprayer.new(sprayer_params)

    respond_to do |format|
      if @sprayer.save
        format.html { redirect_to @sprayer, notice: 'Sprayer was successfully created.' }
        format.json { render :show, status: :created, location: @sprayer }
      else
        format.html { render :new }
        format.json { render json: @sprayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprayers/1
  # PATCH/PUT /sprayers/1.json
  def update
    respond_to do |format|
      if @sprayer.update(sprayer_params)
        format.html { redirect_to @sprayer, notice: 'Sprayer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprayer }
      else
        format.html { render :edit }
        format.json { render json: @sprayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprayers/1
  # DELETE /sprayers/1.json
  def destroy
    @sprayer.destroy
    respond_to do |format|
      format.html { redirect_to sprayers_url, notice: 'Sprayer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprayer
      @sprayer = Sprayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprayer_params
      params.require(:sprayer).permit(:image, :model, :type, :madein, :sprayertype, :usage, :brand, :material)
    end
end
