class ShreddersController < ApplicationController
  before_action :set_shredder, only: [:show, :edit, :update, :destroy]

  # GET /shredders
  # GET /shredders.json
  def index
    @shredders = Shredder.all
  end

  # GET /shredders/1
  # GET /shredders/1.json
  def show
  end

  # GET /shredders/new
  def new
    @shredder = Shredder.new
  end

  # GET /shredders/1/edit
  def edit
  end

  # POST /shredders
  # POST /shredders.json
  def create
    @shredder = Shredder.new(shredder_params)

    respond_to do |format|
      if @shredder.save
        format.html { redirect_to @shredder, notice: 'Shredder was successfully created.' }
        format.json { render :show, status: :created, location: @shredder }
      else
        format.html { render :new }
        format.json { render json: @shredder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shredders/1
  # PATCH/PUT /shredders/1.json
  def update
    respond_to do |format|
      if @shredder.update(shredder_params)
        format.html { redirect_to @shredder, notice: 'Shredder was successfully updated.' }
        format.json { render :show, status: :ok, location: @shredder }
      else
        format.html { render :edit }
        format.json { render json: @shredder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shredders/1
  # DELETE /shredders/1.json
  def destroy
    @shredder.destroy
    respond_to do |format|
      format.html { redirect_to shredders_url, notice: 'Shredder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shredder
      @shredder = Shredder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shredder_params
      params.require(:shredder).permit(:image, :model, :petrolengine, :electricmotor, :wooddiameter, :capacity, :blades, :hammers, :wheels, :chipper, :screen, :weight)
    end
end
